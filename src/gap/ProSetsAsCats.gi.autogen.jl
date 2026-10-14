# SPDX-License-Identifier: GPL-2.0-or-later
# FreydCategoriesForCAP: Freyd categories - Formal (co)kernels for additive categories
#
# Implementations
#

####################################
##
## Constructors
##
####################################

@BindGlobal( "FREYD_CATEGORIES_SkeletalFinSets", SkeletalCategoryOfFiniteSets(; overhead = false ) );

## TODO: create a meaningful sanity check
@InstallGlobalFunction( PRO_SET_AS_CATEGORY_SANITY_CHECK,
  function( incidence_matrix )
    local l, i, sqr;

    l = Length(incidence_matrix);

    #the following checks if the trace is l. If the list given as incidence_matrix
    #is not a square matrix then TraceMat will yeld an error
    if (@not TraceMat(incidence_matrix) == l)
      return [ false, "the trace is not what it should be" ];
    end;

    sqr = incidence_matrix^2;

    for i in (1):(l)
      if (@not IsSubset([0, 1], SetGAP(incidence_matrix[i])))
        return [ false, "Incidence matrix must have entries in [0, 1]" ];
      end;

      if (@not IsSubset(SetGAP(Positions(sqr[i], 0)), SetGAP(Positions(incidence_matrix[i], 0))))
        return [  false, "Incidence matrix must define transitive relation"];
      end;
    end;
    return  [ true ];

end );

##
@InstallMethod( ProSetAsCategory,
               [ IsList ],

  function( incidence_matrix )
    local category, check;

    #= comment for Julia
    # `TraceMat` and squaring of lists of lists is not available in Julia yet
    check = PRO_SET_AS_CATEGORY_SANITY_CHECK( incidence_matrix );

    if (@not check[1])

        Error( check[2] );

    end;
    # =#

    category = CreateCapCategoryWithDataTypes(
                        "ProSet",
                        IsProSetAsCategory,
                        IsProSetAsCategoryObject,
                        IsProSetAsCategoryMorphism,
                        IsCapCategoryTwoCell,
                        IsInt,
                        fail,
                        fail
                       ; overhead = false );
    
    SetIncidenceMatrix( category, incidence_matrix );
    
    SetRangeCategoryOfHomomorphismStructure( category, FREYD_CATEGORIES_SkeletalFinSets );
    SetIsEquippedWithHomomorphismStructure( category, true );
    
    INSTALL_FUNCTIONS_FOR_PROSET_AS_CATEGORY( category );
    
    Finalize( category );
    
    return category;

end );

##
@InstallMethod( Size,
               [ IsProSetAsCategory ],

  function( category )

    return Length( IncidenceMatrix( category ) );

end );

##
@InstallMethod( ProSetAsCategoryObject,
               [ IsInt, IsProSetAsCategory ],

  function( number_object, category )
    ## TODO: sanity check: is number_object in the range [ 1 .. n ]?

    return CreateCapCategoryObjectWithAttributes( category,
                                                  UnderlyingInteger, number_object );

end );

@InstallMethod( ProSetAsCategoryMorphism,
               [ IsProSetAsCategoryObject, IsProSetAsCategoryObject ],

  function( source, range )
    local category;

    category = CapCategory( source );

    return CreateCapCategoryMorphismWithAttributes( category,
                                                    source,
                                                    range );

end );

##
@InstallMethod( ProSetAsCategoryMorphism,
               [ IsInt, IsInt, IsProSetAsCategory ],

  function( int_source, int_range, category )

    return ProSetAsCategoryMorphism(
        ProSetAsCategoryObject( int_source, category ),
        ProSetAsCategoryObject( int_range, category )
    );

end );

##
@InstallGlobalFunction( INSTALL_FUNCTIONS_FOR_PROSET_AS_CATEGORY,

  function( category )
    local emptySet, OneElementSet;

    emptySet = InitialObject( FREYD_CATEGORIES_SkeletalFinSets );
    OneElementSet = TerminalObject( FREYD_CATEGORIES_SkeletalFinSets );

    ##
    AddIsEqualForObjects( category,
      function( cat, a, b )

        return UnderlyingInteger( a ) == UnderlyingInteger( b );

    end );

    ##
    AddIsEqualForMorphisms( category,
      function( cat, alpha, beta )

        return true;

    end );

    ##
    AddIsCongruentForMorphisms( category,
      function( cat, alpha, beta )

        return true;

    end );

    ##
    AddIsWellDefinedForObjects( category,
      function( cat, obj )

        return UnderlyingInteger( obj ) in (1):(Size( category ));

    end );

    ##
    AddIsWellDefinedForMorphisms( category,
      function( cat, alpha )
        local m;

        ## tests if the morphism satisfies our specification
        m = IncidenceMatrix( category );

        return m[UnderlyingInteger(Source(alpha))][UnderlyingInteger(Range(alpha))] == 1;

    end );

    ##
    AddPreCompose( category,
      function( cat, alpha, beta )

        ## a -- alpha --> b -- beta --> c
        return ProSetAsCategoryMorphism( Source( alpha ), Range( beta ) );

    end );

    ##
    AddIdentityMorphism( category,
      function( cat, obj )

        ## Id( obj )
        return ProSetAsCategoryMorphism( obj , obj );

    end );

    ##
    AddInverseForMorphisms( category,
      function( cat, alpha )

         return ProSetAsCategoryMorphism(Range(alpha), Source(alpha));

    end );

    ##
    AddIsIsomorphism( category,
      function( cat, alpha )
        local m, s, r;

        ## check if inverse exists
        m = IncidenceMatrix(category);
        s = UnderlyingInteger(Source(alpha));
        r = UnderlyingInteger(Range(alpha));

        if (m[r][s] == 1)
          return true;
        else return false;
        end;

    end );

    ##
    AddIsEpimorphism( category,
      function( cat, alpha )

        return true;

    end );

    ##
    AddIsMonomorphism( category,
      function( cat, alpha )

        return true;

    end );

    ##
    AddIsLiftable( category,
      function( cat, alpha, beta )
        local s_alpha, s_beta;

        ## decision: if the lift exists
        s_alpha = UnderlyingInteger( Source( alpha ) );
        s_beta = UnderlyingInteger( Source( beta ) );

        return IncidenceMatrix( category )[ s_alpha ][s_beta] == 1;

    end );

    ##
    AddIsColiftable( category,
      function( cat, alpha, beta )
        local r_alpha, r_beta;

        ## decision: if the colift exists
        r_alpha = UnderlyingInteger( Range( alpha ) );
        r_beta = UnderlyingInteger( Range( beta ) );

        return IncidenceMatrix( category )[ r_alpha ][r_beta] == 1;

    end );

    ##
    AddLift( category,
      function( cat, alpha, beta )

        ## decision: if the lift exists

        ##  if it exists -> output the lift
        if (IsLiftable(alpha, beta))
          return ProSetAsCategoryMorphism( Source( alpha ) , Source( beta ) );
        ## if it does not exist -> fail
        else return fail;
        end;

    end );

    ##
    AddColift( category,
      function( cat, alpha, beta )

        ## decision: if the colift exists

        ##  if it exists -> output the colift
        if (IsColiftable(alpha, beta))
          return ProSetAsCategoryMorphism( Range( alpha ) , Range( beta ) );
        ## if it does not exist -> fail
        else return fail;
        end;

    end );

    ## Homomorphism structure
    AddHomomorphismStructureOnObjects( category,
      function( cat, a, b )
        local m;

        m = IncidenceMatrix(category);
        if (m[ UnderlyingInteger( a ) ][ UnderlyingInteger( b ) ] == 1)
            return OneElementSet;
        else
            return emptySet;
        end;

    end );

    ##
    AddHomomorphismStructureOnMorphismsWithGivenObjects( category,
      function( cat, source, alpha, beta, range )

        if (IsEqualForObjects(source, OneElementSet ))
            return IdentityMorphism( source );
        else
            return UniversalMorphismFromInitialObject( range );
        end;

    end );

    ##
    AddDistinguishedObjectOfHomomorphismStructure( category,
      function( cat )

        return OneElementSet;

    end );

    ##
    AddInterpretMorphismAsMorphismFromDistinguishedObjectToHomomorphismStructure( category,
      function( cat, alpha )

        return IdentityMorphism( OneElementSet );

    end );

    ##
    AddInterpretMorphismFromDistinguishedObjectToHomomorphismStructureAsMorphism( category,
      function( cat, a, b, mor )

          return ProSetAsCategoryMorphism( a, b );

    end );

end );



####################################
##
## View
##
####################################

# ##
# InstallMethod( ViewString,
#                [ IsProSetAsCategoryMorphism ],

#     function( alpha )

#         return @Concatenation( "<", ViewString( UnderlyingProSetElement( alpha ) ), ">" );

# end );

##
@InstallMethod( ViewString,
               [ IsProSetAsCategoryObject ],

  function( obj )

    return StringGAP( UnderlyingInteger( obj ) );

end );

####################################
##
## Down
##
####################################

##
@InstallMethod( Down,
               [ IsProSetAsCategoryObject ],
               UnderlyingInteger );

##
@InstallMethod( DownOnlyMorphismData,
               [ IsProSetAsCategoryMorphism ],
  function( mor )

    return "->";

end );


@InstallMethod( *,
               [ IsProSetAsCategoryMorphism, IsProSetAsCategoryMorphism ],
  function( alpha , beta )

    return PreCompose( alpha , beta ) ;

end );

@InstallMethod( /,
               [ IsInt, IsProSetAsCategory ],
  function( n, C )

    return ProSetAsCategoryObject( n , C ) ;

end );
