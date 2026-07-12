# SPDX-License-Identifier: GPL-2.0-or-later
# FreydCategoriesForCAP: Freyd categories - Formal (co)kernels for additive categories
#
# Minimal implementation of GeneralizedMorphismsForCAP functionality
# needed by the Adelman category homomorphism structure.

####################################
##
## GeneralizedMorphismBySpan
##
####################################

# Simple struct representing a generalized morphism by span A <-f- B -g-> C
struct GeneralizedSpan
    reversed_arrow  # f : B -> A  (source of span is A = Range(f))
    arrow           # g : B -> C  (range  of span is C = Range(g))
end

# Wrapper for objects in the generalized morphism category
struct GeneralizedSpanObject
    honest_object
end

# Constructor
GeneralizedMorphismBySpan(reversed_arrow, arrow) = GeneralizedSpan(reversed_arrow, arrow)

# Source / Range for spans  (extend the CAP attributes)
function (::typeof(Source))(span::GeneralizedSpan)
    GeneralizedSpanObject(Range(span.reversed_arrow))
end

function (::typeof(Range))(span::GeneralizedSpan)
    GeneralizedSpanObject(Range(span.arrow))
end

# Extract the underlying honest object from a GeneralizedSpanObject
UnderlyingHonestObject(obj::GeneralizedSpanObject) = obj.honest_object

# Arrow / ReversedArrow accessors  (extend the CAP attributes)
function (::typeof(Arrow))(span::GeneralizedSpan)
    span.arrow
end

function (::typeof(ReversedArrow))(span::GeneralizedSpan)
    span.reversed_arrow
end

# Wrap an honest morphism as a span with identity reversed arrow
AsGeneralizedMorphismBySpan(morphism) =
    GeneralizedSpan(IdentityMorphism(Source(morphism)), morphism)

# Pseudo-inverse: flip the span  (extend the CAP attribute PseudoInverse)
function (::typeof(PseudoInverse))(span::GeneralizedSpan)
    GeneralizedSpan(span.arrow, span.reversed_arrow)
end

####################################
##
## HonestRepresentative
##
####################################

# Declare HonestRepresentative if it has not been declared yet
# (it lives in Toposes which is not a direct dependency of this package)
@DeclareAttribute( "HonestRepresentative", IsObject )

# Honest representative of a generalized morphism by span.
# Uses the normalised-span construction:
#   1. Form the pushout of [reversed_arrow, arrow].
#   2. Take the fibre product of the two pushout injections.
#   3. HonestRepresentative = Inverse(norm1) ∘ norm2.
function (::typeof(HonestRepresentative))(span::GeneralizedSpan)
    inj1 = InjectionOfCofactorOfPushout( [ span.reversed_arrow, span.arrow ], 1 )
    inj2 = InjectionOfCofactorOfPushout( [ span.reversed_arrow, span.arrow ], 2 )
    norm1 = ProjectionInFactorOfFiberProduct( [ inj1, inj2 ], 1 )
    norm2 = ProjectionInFactorOfFiberProduct( [ inj1, inj2 ], 2 )
    PreCompose( Inverse( norm1 ), norm2 )
end

####################################
##
## PreCompose for lists of spans
##
####################################

# Compose two spans using the fibre-product formula:
#   span(f, g) ∘ span(h, k)  where g : B→C and h : D→C
#   FP = FiberProduct(g, h),  π₁ : FP→B,  π₂ : FP→D
#   result = span( π₁∘f, π₂∘k )
function _precompose_generalized_spans(span1::GeneralizedSpan, span2::GeneralizedSpan)
    pullback_diagram = [ span1.arrow, span2.reversed_arrow ]
    proj_left  = ProjectionInFactorOfFiberProduct( pullback_diagram, 1 )
    proj_right = ProjectionInFactorOfFiberProduct( pullback_diagram, 2 )
    GeneralizedSpan(
        PreCompose( proj_left,  span1.reversed_arrow ),
        PreCompose( proj_right, span2.arrow )
    )
end

# PreCompose for a homogeneous Vector{<:GeneralizedSpan}
function (::typeof(PreCompose))(morphism_list::Vector{<:GeneralizedSpan})
    length(morphism_list) == 1 && return morphism_list[1]
    result = morphism_list[1]
    for i in 2:length(morphism_list)
        result = _precompose_generalized_spans(result, morphism_list[i])
    end
    result
end
