module FreydCategoriesForCAPFinSetsForCAPExtension

@nospecialize

using CAP

using MonoidalCategories

using LinearAlgebraForCAP # this is not a GAP dependency but needed for various declarations not (yet) part of MatricesForHomalg

using FreydCategoriesForCAP

using CartesianCategories

using Toposes

using FinSetsForCAP

# To avoid name clashes, we exclude some names from the global namespace of the extension module.
ExcludedNames_ = copy(ExcludedNames)

empty!(ExcludedNames)

append!(ExcludedNames, [
  :PseudoInverse,
  :TheJuliaAttributeTypePseudoInverse,
  :PseudoInverse_OPERATION,
  :SetPseudoInverse,
  :HasPseudoInverse,
  :UnderlyingCategory,
  :TheJuliaAttributeTypeUnderlyingCategory,
  :UnderlyingCategory_OPERATION,
  :SetUnderlyingCategory,
  :HasUnderlyingCategory,
])

@IMPORT_THE_WORLD()

empty!(ExcludedNames)

append!(ExcludedNames, ExcludedNames_)

push!(ModulesForEvaluationStack, @__MODULE__)

include("../src/gap/ProSetsAsCats.gi.autogen.jl")

push!(ModulesForEvaluationStack)

end # module FreydCategoriesForCAPFinSetsForCAPExtension
