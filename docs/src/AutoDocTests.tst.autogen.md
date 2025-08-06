
```jldoctest AutoDocTests
julia> using MatricesForHomalg, CAP, MonoidalCategories, LinearAlgebraForCAP, AdditiveClosuresForCAP, LinearClosuresForCAP, CartesianCategories, Toposes, FinSetsForCAP, FreydCategoriesForCAP

julia> R = HomalgRingOfIntegers();

julia> rows = CategoryOfRows( R );

julia> adelman = AdelmanCategory( rows );

julia> obj1 = CategoryOfRowsObject( 1, rows );

julia> obj2 = CategoryOfRowsObject( 2, rows );

julia> id = IdentityMorphism( obj2 );

julia> alpha = CategoryOfRowsMorphism( obj1, HomalgMatrix( [ [ 1, 2 ] ], 1, 2, R ), obj2 );

julia> beta = CategoryOfRowsMorphism( obj2, HomalgMatrix( [ [ 1, 2 ], [ 3, 4 ] ], 2, 2, R ), obj2 );

julia> gamma = CategoryOfRowsMorphism( obj2, HomalgMatrix( [ [ 1, 3 ], [ 3, 4 ] ], 2, 2, R ), obj2 );

julia> obj1_a = AsAdelmanCategoryObject( obj1 );

julia> obj2_a = AsAdelmanCategoryObject( obj2 );

julia> m = AsAdelmanCategoryMorphism( beta );

julia> n = AsAdelmanCategoryMorphism( gamma );

julia> IsWellDefined( m )
true

julia> # backwards compatibility
        IsIdenticalObj( MorphismDatum( m ), beta )
true

julia> IsCongruentForMorphisms( PreCompose( m, n ), PreCompose( n, m ) )
false

julia> IsCongruentForMorphisms( SubtractionForMorphisms( m, m ), ZeroMorphism( obj2_a, obj2_a ) )
true

julia> IsCongruentForMorphisms( ZeroObjectFunctorial( adelman ),
                                 PreCompose( UniversalMorphismFromZeroObject( obj1_a), UniversalMorphismIntoZeroObject( obj1_a ) ) 
                                )
true

julia> d = [ obj1_a, obj2_a ];

julia> pi1 = ProjectionInFactorOfDirectSum( d, 1 );

julia> pi2 = ProjectionInFactorOfDirectSum( d, 2 );

julia> id = IdentityMorphism( DirectSum( d ) );

julia> iota1 = InjectionOfCofactorOfDirectSum( d, 1 );

julia> iota2 = InjectionOfCofactorOfDirectSum( d, 2 );

julia> IsCongruentForMorphisms( PreCompose( pi1, iota1 ) + PreCompose( pi2, iota2 ), id )
true

julia> IsCongruentForMorphisms( UniversalMorphismIntoDirectSum( d, [ pi1, pi2 ] ), id )
true

julia> IsCongruentForMorphisms( UniversalMorphismFromDirectSum( d, [ iota1, iota2 ] ), id )
true

julia> c = CokernelProjection( m );

julia> c2 = CokernelProjection( c );

julia> IsCongruentForMorphisms( c2, ZeroMorphism( Source( c2 ), Range( c2 ) ) )
true

julia> IsWellDefined( CokernelProjection( m ) )
true

julia> IsCongruentForMorphisms( CokernelColift( m, CokernelProjection( m ) ), IdentityMorphism( CokernelObject( m ) ) )
true

julia> k = KernelEmbedding( c );

julia> IsZeroForMorphisms( PreCompose( k, c ) )
true

julia> IsCongruentForMorphisms( KernelLift( m, KernelEmbedding( m ) ), IdentityMorphism( KernelObject( m ) ) )
true

```

```jldoctest AutoDocTests
julia> using MatricesForHomalg, CAP, MonoidalCategories, LinearAlgebraForCAP, AdditiveClosuresForCAP, LinearClosuresForCAP, CartesianCategories, Toposes, FinSetsForCAP, FreydCategoriesForCAP

julia> R = HomalgRingOfIntegers();

julia> cols = CategoryOfColumns( R );

julia> adelman = AdelmanCategory( cols );

julia> obj1 = CategoryOfColumnsObject( 1, cols );

julia> obj2 = CategoryOfColumnsObject( 2, cols );

julia> id = IdentityMorphism( obj2 );

julia> alpha = CategoryOfColumnsMorphism( obj1, HomalgMatrix( [ [ 1 ], [ 2 ] ], 2, 1, R ), obj2 );

julia> beta = CategoryOfColumnsMorphism( obj2, HomalgMatrix( [ [ 1, 3 ], [ 2, 4 ] ], 2, 2, R ), obj2 );

julia> gamma = CategoryOfColumnsMorphism( obj2, HomalgMatrix( [ [ 1, 3 ], [ 3, 4 ] ], 2, 2, R ), obj2 );

julia> obj1_a = AsAdelmanCategoryObject( obj1 );

julia> obj2_a = AsAdelmanCategoryObject( obj2 );

julia> m = AsAdelmanCategoryMorphism( beta );

julia> n = AsAdelmanCategoryMorphism( gamma );

julia> IsWellDefined( m )
true

julia> IsCongruentForMorphisms( PreCompose( m, n ), PreCompose( n, m ) )
false

julia> IsCongruentForMorphisms( SubtractionForMorphisms( m, m ), ZeroMorphism( obj2_a, obj2_a ) )
true

julia> IsCongruentForMorphisms( ZeroObjectFunctorial( adelman ),
                                 PreCompose( UniversalMorphismFromZeroObject( obj1_a), UniversalMorphismIntoZeroObject( obj1_a ) ) 
                                )
true

julia> d = [ obj1_a, obj2_a ];

julia> pi1 = ProjectionInFactorOfDirectSum( d, 1 );

julia> pi2 = ProjectionInFactorOfDirectSum( d, 2 );

julia> id = IdentityMorphism( DirectSum( d ) );

julia> iota1 = InjectionOfCofactorOfDirectSum( d, 1 );

julia> iota2 = InjectionOfCofactorOfDirectSum( d, 2 );

julia> IsCongruentForMorphisms( PreCompose( pi1, iota1 ) + PreCompose( pi2, iota2 ), id )
true

julia> IsCongruentForMorphisms( UniversalMorphismIntoDirectSum( d, [ pi1, pi2 ] ), id )
true

julia> IsCongruentForMorphisms( UniversalMorphismFromDirectSum( d, [ iota1, iota2 ] ), id )
true

julia> c = CokernelProjection( m );

julia> c2 = CokernelProjection( c );

julia> IsCongruentForMorphisms( c2, ZeroMorphism( Source( c2 ), Range( c2 ) ) )
true

julia> IsWellDefined( CokernelProjection( m ) )
true

julia> IsCongruentForMorphisms( CokernelColift( m, CokernelProjection( m ) ), IdentityMorphism( CokernelObject( m ) ) )
true

julia> k = KernelEmbedding( c );

julia> IsZeroForMorphisms( PreCompose( k, c ) )
true

julia> IsCongruentForMorphisms( KernelLift( m, KernelEmbedding( m ) ), IdentityMorphism( KernelObject( m ) ) )
true

```

```jldoctest AutoDocTests
julia> using MatricesForHomalg, CAP, MonoidalCategories, LinearAlgebraForCAP, AdditiveClosuresForCAP, LinearClosuresForCAP, CartesianCategories, Toposes, FinSetsForCAP, FreydCategoriesForCAP

julia> K = [ [1, 1, 1], [0, 1, 1], [0, 1, 1] ];

julia> L = [ [1, 1, 0], [0, 1, 1], [0, 0, 1] ];

julia> P_K = ProSetAsCategory(K);

julia> #ProSetAsCategory(L)

julia> a = 1/P_K;

julia> b = ProSetAsCategoryObject(2, P_K);

julia> c = ProSetAsCategoryObject(3, P_K);

julia> d = ProSetAsCategoryObject(4, P_K);

julia> delta = ProSetAsCategoryMorphism(b, a);

julia> IsWellDefined(a)
true

julia> IsWellDefined(d)
false

julia> IsWellDefined(delta)
false

julia> alpha = ProSetAsCategoryMorphism(a, b);

julia> beta = ProSetAsCategoryMorphism(b, c);

julia> gamma = ProSetAsCategoryMorphism(a, c);

julia> gamma == PreCompose(alpha, beta)
true

julia> id_a = IdentityMorphism(a);

julia> IsWellDefined(Inverse(alpha))
false

julia> beta*Inverse(beta) == IdentityMorphism(b)
true

julia> alpha == Lift(gamma, beta)
true

julia> IsLiftable(beta, gamma)
false

julia> Colift(alpha, gamma) == beta
true

julia> alpha == HomStructure(a, b, HomStructure(alpha))
true

```
