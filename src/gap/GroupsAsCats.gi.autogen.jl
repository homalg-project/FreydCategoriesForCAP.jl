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

##
@InstallMethod( GroupAsCategory,
               [ IsGroup ],
               
  function( group )
    local category, is_finite;
    
    category = CreateCapCategory( @Concatenation( "Group as category( ", StringGAP( group )," )" ), IsGroupAsCategory, IsGroupAsCategoryObject, IsGroupAsCategoryMorphism, IsCapCategoryTwoCell; overhead = false );
    
    category.compiler_hints = @rec(
        category_attribute_names = [
            "UnderlyingGroup",
        ],
    );
    
    SetUnderlyingGroup( category, group );
    
    SetIsObjectFiniteCategory( category, true );
    
    is_finite = HasIsFinite( group ) && IsFinite( group );
    
    if (is_finite)
        
        SetIsFiniteCategory( category, true );
        SetRangeCategoryOfHomomorphismStructure( category, FREYD_CATEGORIES_SkeletalFinSets );
        SetIsEquippedWithHomomorphismStructure( category, true );
        
    end;
    
    INSTALL_FUNCTIONS_FOR_GROUP_AS_CATEGORY( category, is_finite );
    
    Finalize( category );
    
    return category;
    
end );

##
@InstallMethod( GroupAsCategoryUniqueObject,
               [ IsGroupAsCategory ],
               
  function( category )
    
    return CreateCapCategoryObjectWithAttributes( category );
    
end );

##
@InstallMethod( GroupAsCategoryMorphismOp,
               [ IsGroupAsCategory, IsObject ],
               
  function( category, element )
    local unique_object;
    
    unique_object = GroupAsCategoryUniqueObject( category );
    
    return CreateCapCategoryMorphismWithAttributes( category,
                                                    unique_object,
                                                    unique_object,
                                                    UnderlyingGroupElement, element );
    
end );

##
@InstallMethod( GroupAsCategoryMorphism,
               [ IsObject, IsGroupAsCategory ],
               
  function( element, category )
    
    return GroupAsCategoryMorphism( category, element );
    
end );

####################################
##
## View
##
####################################

##
@InstallMethod( ViewString,
               [ IsGroupAsCategoryMorphism ],
    
    function( alpha )
        
        return @Concatenation( "<", ViewString( UnderlyingGroupElement( alpha ) ), ">" );
        
end );

##
@InstallMethod( ViewString,
               [ IsGroupAsCategoryObject ],

  function( obj )
    
    return "*";
    
end );

####################################
##
## Attributes
##
####################################

##
@InstallMethod( ElementsOfUnderlyingGroup,
               [ IsGroupAsCategory ],
               
  function( CG )
    
    return Elements( UnderlyingGroup( CG ) );
    
end );

##
@InstallMethod( PositionWithinElements,
               [ IsGroupAsCategoryMorphism ],
               
  function( alpha )
    
    return Position( ElementsOfUnderlyingGroup( CapCategory( alpha ) ), UnderlyingGroupElement( alpha ) );
    
end );

####################################
##
## Basic operations
##
####################################

@InstallGlobalFunction( INSTALL_FUNCTIONS_FOR_GROUP_AS_CATEGORY,
  
  function( category, is_finite )
    local group, equality_func,
          sets, t_obj, elements, size, RG, HOM_PERMUTATION_ARRAY;
    
    group = UnderlyingGroup( category );
    
    ##
    AddIsEqualForObjects( category, (cat, a, b) -> true );
    
    equality_func = (cat, alpha, beta) -> UnderlyingGroupElement( alpha ) == UnderlyingGroupElement( beta );
    
    ##
    AddIsEqualForMorphisms( category, equality_func );
    
    ##
    AddIsCongruentForMorphisms( category, equality_func );
    
    ##
    AddIsWellDefinedForObjects( category, (cat, x) -> IsIdenticalObj( category, CapCategory( x ) ) );
    
    ##
    AddIsWellDefinedForMorphisms( category,
      function( cat, alpha )
        
        return UnderlyingGroupElement( alpha ) in UnderlyingGroup( category );
        
    end );
    
    ##
    AddPreCompose( category,
      function( cat, alpha, beta )
        
        return GroupAsCategoryMorphism(
            category,
            UnderlyingGroupElement( alpha ) * UnderlyingGroupElement( beta )
        );
        
    end );
    
    ##
    AddIdentityMorphism( category,
      function( cat, unique_object )
        
        return GroupAsCategoryMorphism(
            category,
            One( group )
        );
        
    end );
    
    ##
    AddInverseForMorphisms( category,
      function( cat, alpha )
        
        return  GroupAsCategoryMorphism(
            category,
            Inverse( UnderlyingGroupElement( alpha ) )
        );
        
    end );
    
    ##
    AddIsIsomorphism( category, (cat, mor) -> true );
    
    ##
    AddIsEpimorphism( category, (cat, mor) -> true );
    
    ##
    AddIsMonomorphism( category, (cat, mor) -> true );
    
    ##
    AddIsLiftable( category, (cat, mor1, mor2) -> true );
    
    ##
    AddIsColiftable( category, (cat, mor1, mor2) -> true );
    
    ##
    AddLift( category,
        function( cat, alpha, beta )
            return  GroupAsCategoryMorphism(
            category,
            UnderlyingGroupElement( alpha ) * Inverse( UnderlyingGroupElement( beta ) )
        );
    end );
    
    ##
    AddColift( category,
        function( cat, alpha, beta )
            return  GroupAsCategoryMorphism(
            category,
            Inverse( UnderlyingGroupElement( alpha ) ) * UnderlyingGroupElement( beta )
        );
    end );
    
    ##
    AddSetOfObjectsOfCategory( category,
      function( cat )
        
        return [ GroupAsCategoryUniqueObject( cat ) ];
        
    end );
        
    if (is_finite)
        
        sets = RangeCategoryOfHomomorphismStructure( category );
        
        t_obj = TerminalObject( sets );
        
        elements = ElementsOfUnderlyingGroup( category );
        
        size = Length( elements );
        
        RG = FinSet( FREYD_CATEGORIES_SkeletalFinSets, size );
        
        ##
        AddSetOfMorphismsOfFiniteCategory( category,
          function( cat )
            
            return List( elements, el -> GroupAsCategoryMorphism( category, el ) );
            
        end );
        
        ## Homomorphism structure
        ##
        ## Warning: the hom structure is costly for big finite groups.
        ## TODO: Only do a preprocessing for small groups
        AddHomomorphismStructureOnObjects( category,
          function( cat, a, b )
            
            return RG;
            
        end );
        
        ## Precomputatation of the multiplication maps
        ## [g,h] -> List encoding the multiplication map (x -> G[g] * x * G[h])
        
        ## take Size( SymmetricGroup( 5 ) ) as a first guess
        if (size <= 120)
            
            ## heavy precomputation, only do for reasonable sizes
            
            HOM_PERMUTATION_ARRAY =
                List( (1):(size), g ->
                    List( (1):(size), h ->
                        List( elements, x -> -1 + Position( elements, elements[g] * x * elements[h] ) )
                    )
                );
            
            ## Should this function have a cache?
            ##
            AddHomomorphismStructureOnMorphisms( category,
            function( cat, alpha, beta )
                
                return MapOfFinSets(
                        FREYD_CATEGORIES_SkeletalFinSets,
                        RG,
                        HOM_PERMUTATION_ARRAY[ PositionWithinElements( alpha ) ][ PositionWithinElements( beta ) ],
                        RG
                );
            
            end );
            
        else
            
            ## Should this function have a cache?
            ##
            AddHomomorphismStructureOnMorphisms( category,
            function( cat, alpha, beta )
                
                return MapOfFinSets(
                        FREYD_CATEGORIES_SkeletalFinSets,
                        RG,
                        List( elements, x -> -1 + Position( elements, elements[PositionWithinElements( alpha )] * x * elements[PositionWithinElements( beta )] ) ),
                        RG
                );
                
            end );
            
        end;
        
        
        
        ##
        AddDistinguishedObjectOfHomomorphismStructure( category,
          function( cat )
            
            return t_obj;
            
        end );
        
        ##
        AddInterpretMorphismAsMorphismFromDistinguishedObjectToHomomorphismStructure( category,
          function( cat, alpha )
            return MapOfFinSets(
                FREYD_CATEGORIES_SkeletalFinSets,
                t_obj,
                [ -1 + PositionWithinElements( alpha ) ],
                RG
            );
        end );
        
        ##
        AddInterpretMorphismFromDistinguishedObjectToHomomorphismStructureAsMorphism( category,
          function( cat, a, b, mor )
            return GroupAsCategoryMorphism(
                category,
                elements[ 1 + AsList( mor )[1] ]
            );
        end );
        
    end;
    
end );

####################################
##
## Convenience
##
####################################

@InstallMethod( *,
               [ IsGroupAsCategoryMorphism, IsGroupAsCategoryMorphism ],
               PreCompose );

@InstallMethod( ==,
               [ IsGroupAsCategoryMorphism, IsGroupAsCategoryMorphism ],
               IsCongruentForMorphisms );

@InstallMethod( /,
               [ IsObject, IsGroupAsCategory ],
               GroupAsCategoryMorphism );

####################################
##
## Down
##
####################################

##
@InstallMethod( Down,
               [ IsGroupAsCategoryObject ],
  function( obj )
    
    return "*";
    
end );

##
@InstallMethod( DownOnlyMorphismData,
               [ IsGroupAsCategoryMorphism ],
  function( mor )
    
    return UnderlyingGroupElement( mor );
    
end );
