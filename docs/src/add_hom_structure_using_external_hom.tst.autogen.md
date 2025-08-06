
```jldoctest
julia> using MatricesForHomalg, CAP, MonoidalCategories, LinearAlgebraForCAP, AdditiveClosuresForCAP, LinearClosuresForCAP, CartesianCategories, Toposes, FinSetsForCAP, FreydCategoriesForCAP

julia> true
true

julia> dummy = DummyCategory( @rec(
                       list_of_operations_to_install =  [
                           "IsCongruentForMorphisms",
                           "PreComposeList",
                           "SumOfMorphisms" ],
                       properties = [ "IsLinearCategoryOverCommutativeRingWithFinitelyGeneratedFreeExternalHoms" ] ); FinalizeCategory = false );

julia> field = HomalgFieldOfRationals( );

julia> SetCommutativeRingOfLinearCategory( dummy, field )

julia> AddMultiplyWithElementOfCommutativeRingForMorphisms( dummy, ReturnNothing )

julia> AddBasisOfExternalHom( dummy, ReturnNothing )

julia> AddCoefficientsOfMorphism( dummy, ReturnNothing )

julia> SetRangeCategoryOfHomomorphismStructure( dummy, CategoryOfRows( field ) )

julia> SetIsEquippedWithHomomorphismStructure( dummy, true )

julia> Finalize( dummy );

julia> IsLinearCategoryOverCommutativeRing( dummy )
true

julia> ForAll( [  "HomomorphismStructureOnObjects",
                      "HomomorphismStructureOnMorphismsWithGivenObjects",
                      "DistinguishedObjectOfHomomorphismStructure",
                      "InterpretMorphismAsMorphismFromDistinguishedObjectToHomomorphismStructureWithGivenObjects",
                      "InterpretMorphismFromDistinguishedObjectToHomomorphismStructureAsMorphism" ], m -> CanCompute( dummy, m ) )
true

```
