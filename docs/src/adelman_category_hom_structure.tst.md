
```jldoctest
julia> using MatricesForHomalg, CAP, MonoidalCategories, LinearAlgebraForCAP, AdditiveClosuresForCAP, LinearClosuresForCAP, CartesianCategories, Toposes, FinSetsForCAP, FreydCategoriesForCAP

julia> true
true

julia> Q = HomalgFieldOfRationals( );

julia> rows = CategoryOfRows( Q );

julia> adelman = AdelmanCategory( rows );

julia> CanCompute( adelman, "HomomorphismStructureOnObjects" )
true

julia> CanCompute( adelman, "HomomorphismStructureOnMorphisms" )
true

julia> A = CategoryOfRowsObject( 2, rows );

julia> B = CategoryOfRowsObject( 3, rows );

julia> Aa = AsAdelmanCategoryObject( A );

julia> Ba = AsAdelmanCategoryObject( B );

julia> H = HomomorphismStructureOnObjects( Aa, Ba );

julia> RankOfObject( H )
6

julia> f = CategoryOfRowsMorphism( rows, A, HomalgMatrix( [ [ 1, 0, 0 ], [ 0, 1, 0 ] ], 2, 3, Q ), B );

julia> fa = AsAdelmanCategoryMorphism( f );

julia> IsWellDefined( fa )
true

julia> Hff = HomomorphismStructureOnMorphisms( fa, fa );

julia> IsEqualForObjects( Source( Hff ), Range( Hff ) )
true

julia> interp = InterpretMorphismAsMorphismFromDistinguishedObjectToHomomorphismStructure( fa );

julia> back = InterpretMorphismFromDistinguishedObjectToHomomorphismStructureAsMorphism( Aa, Ba, interp );

julia> IsCongruentForMorphisms( back, fa )
true

```
