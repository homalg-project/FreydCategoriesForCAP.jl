# SPDX-License-Identifier: GPL-2.0-or-later
# FreydCategoriesForCAP: Freyd categories - Formal (co)kernels for additive categories
#
# Declarations
#
#! @Chapter Cokernel image closure

####################################
##
#! @Section GAP Categories
##
####################################

@DeclareFilter( "IsCokernelImageClosureObject",
                 IsCapCategoryObject );

@DeclareFilter( "IsCokernelImageClosureMorphism",
                 IsCapCategoryMorphism );

@DeclareFilter( "IsCokernelImageClosure",
                 IsCapCategory );

@DeclareGlobalFunction( "INSTALL_FUNCTIONS_FOR_COKERNEL_IMAGE_CLOSURE" );

####################################
##
#! @Section Constructors
##
####################################

@DeclareAttribute( "CokernelImageClosure",
                  IsCapCategory );

@DeclareOperation( "CokernelImageClosureObject",
                  [ IsCapCategoryMorphism, IsCapCategoryMorphism ] );

@DeclareOperation( "CokernelImageClosureMorphism",
                  [ IsCokernelImageClosureObject, IsCapCategoryMorphism, IsCokernelImageClosureObject ] );

@DeclareAttribute( "AsCokernelImageClosureObject",
                  IsCapCategoryObject );

@DeclareAttribute( "AsFinitelyPresentedCokernelImageClosureObject",
                  IsCapCategoryMorphism );

@DeclareAttribute( "AsCokernelImageClosureMorphism",
                  IsCapCategoryMorphism );

####################################
##
#! @Section Attributes
##
####################################

@DeclareAttribute( "UnderlyingCategory",
                  IsCokernelImageClosure );

@DeclareAttribute( "GeneratorMorphism",
                  IsCokernelImageClosureObject );

@DeclareAttribute( "RelationMorphism",
                  IsCokernelImageClosureObject );

## this exists if the underlying category has biased weak pullbacks
@DeclareAttribute( "RelationOfGeneratorMorphism",
                  IsCokernelImageClosureObject );

@DeclareAttribute( "MorphismDatum",
                  IsCokernelImageClosureMorphism );

@DeclareAttribute( "MorphismWitness",
                  IsCokernelImageClosureMorphism );

@DeclareAttribute( "WitnessForBeingCongruentToZero",
                  IsCokernelImageClosureMorphism );

@DeclareAttribute( "MereExistenceOfWitnessForBeingCongruentToZero",
                  IsCokernelImageClosureMorphism );

#######################################
##
#! @Section Functors
##
#######################################

##
@DeclareAttribute( "FunctorCokernelImageClosureToFreydCategory",
                  IsCapCategory );

##
@DeclareAttribute( "FunctorFreydCategoryToCokernelImageClosure",
                  IsCapCategory );

#######################################
##
#! @Section Natural Transformations
##
#######################################

##
@DeclareAttribute( "NaturalIsomorphismFromIdentityToFinitePresentationOfCokernelImageClosureObject",
                  IsCapCategory );

##
@DeclareAttribute( "NaturalIsomorphismFromFinitePresentationOfCokernelImageClosureObjectToIdentity",
                  IsCapCategory );
