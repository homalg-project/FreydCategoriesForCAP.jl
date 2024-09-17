# SPDX-License-Identifier: GPL-2.0-or-later
# FreydCategoriesForCAP: Freyd categories - Formal (co)kernels for additive categories
#
# Declarations
#
# THIS FILE IS AUTOMATICALLY GENERATED, SEE CAP_project/CAP/gap/MethodRecordTools.gi

#! @Chapter Add Functions

#! @Section Available Add functions

#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `BiasedWeakFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2, arg3 ) \mapsto \mathtt[BiasedWeakFiberProduct](arg2, arg3)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `BiasedWeakPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2, arg3 ) \mapsto \mathtt[BiasedWeakPushout](arg2, arg3)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddBiasedWeakPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddBiasedWeakPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `DirectSumMorphismToWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, beta ) \mapsto \mathtt[DirectSumMorphismToWeakBiPushout](alpha, beta)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddDirectSumMorphismToWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddDirectSumMorphismToWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `EpimorphismFromSomeProjectiveObjectForKernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha ) \mapsto \mathtt[EpimorphismFromSomeProjectiveObjectForKernelObject](alpha)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddEpimorphismFromSomeProjectiveObjectForKernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddEpimorphismFromSomeProjectiveObjectForKernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `EpimorphismFromSomeProjectiveObjectForKernelObjectWithGivenSomeProjectiveObjectForKernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, source ) \mapsto \mathtt[EpimorphismFromSomeProjectiveObjectForKernelObjectWithGivenSomeProjectiveObjectForKernelObject](alpha, source)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddEpimorphismFromSomeProjectiveObjectForKernelObjectWithGivenSomeProjectiveObjectForKernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddEpimorphismFromSomeProjectiveObjectForKernelObjectWithGivenSomeProjectiveObjectForKernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `InjectionOfBiasedWeakPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b ) \mapsto \mathtt[InjectionOfBiasedWeakPushout](a, b)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddInjectionOfBiasedWeakPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddInjectionOfBiasedWeakPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `InjectionOfBiasedWeakPushoutWithGivenBiasedWeakPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, P ) \mapsto \mathtt[InjectionOfBiasedWeakPushoutWithGivenBiasedWeakPushout](a, b, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddInjectionOfBiasedWeakPushoutWithGivenBiasedWeakPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddInjectionOfBiasedWeakPushoutWithGivenBiasedWeakPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `InjectionOfFirstCofactorOfWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b ) \mapsto \mathtt[InjectionOfFirstCofactorOfWeakBiPushout](a, b)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddInjectionOfFirstCofactorOfWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddInjectionOfFirstCofactorOfWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `InjectionOfFirstCofactorOfWeakBiPushoutWithGivenWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, P ) \mapsto \mathtt[InjectionOfFirstCofactorOfWeakBiPushoutWithGivenWeakBiPushout](a, b, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddInjectionOfFirstCofactorOfWeakBiPushoutWithGivenWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddInjectionOfFirstCofactorOfWeakBiPushoutWithGivenWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `InjectionOfSecondCofactorOfWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b ) \mapsto \mathtt[InjectionOfSecondCofactorOfWeakBiPushout](a, b)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddInjectionOfSecondCofactorOfWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddInjectionOfSecondCofactorOfWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `InjectionOfSecondCofactorOfWeakBiPushoutWithGivenWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, P ) \mapsto \mathtt[InjectionOfSecondCofactorOfWeakBiPushoutWithGivenWeakBiPushout](a, b, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddInjectionOfSecondCofactorOfWeakBiPushoutWithGivenWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddInjectionOfSecondCofactorOfWeakBiPushoutWithGivenWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `MonomorphismToSomeInjectiveObjectForCokernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha ) \mapsto \mathtt[MonomorphismToSomeInjectiveObjectForCokernelObject](alpha)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddMonomorphismToSomeInjectiveObjectForCokernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddMonomorphismToSomeInjectiveObjectForCokernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `MonomorphismToSomeInjectiveObjectForCokernelObjectWithGivenSomeInjectiveObjectForCokernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, range ) \mapsto \mathtt[MonomorphismToSomeInjectiveObjectForCokernelObjectWithGivenSomeInjectiveObjectForCokernelObject](alpha, range)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddMonomorphismToSomeInjectiveObjectForCokernelObjectWithGivenSomeInjectiveObjectForCokernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddMonomorphismToSomeInjectiveObjectForCokernelObjectWithGivenSomeInjectiveObjectForCokernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `ProjectionInFirstFactorOfWeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b ) \mapsto \mathtt[ProjectionInFirstFactorOfWeakBiFiberProduct](a, b)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddProjectionInFirstFactorOfWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddProjectionInFirstFactorOfWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `ProjectionInFirstFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, P ) \mapsto \mathtt[ProjectionInFirstFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct](a, b, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddProjectionInFirstFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddProjectionInFirstFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `ProjectionInSecondFactorOfWeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b ) \mapsto \mathtt[ProjectionInSecondFactorOfWeakBiFiberProduct](a, b)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddProjectionInSecondFactorOfWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddProjectionInSecondFactorOfWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `ProjectionInSecondFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, P ) \mapsto \mathtt[ProjectionInSecondFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct](a, b, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddProjectionInSecondFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddProjectionInSecondFactorOfWeakBiFiberProductWithGivenWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `ProjectionOfBiasedWeakFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b ) \mapsto \mathtt[ProjectionOfBiasedWeakFiberProduct](a, b)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddProjectionOfBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddProjectionOfBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `ProjectionOfBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, P ) \mapsto \mathtt[ProjectionOfBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct](a, b, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddProjectionOfBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddProjectionOfBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `SomeInjectiveObjectForCokernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2 ) \mapsto \mathtt[SomeInjectiveObjectForCokernelObject](arg2)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddSomeInjectiveObjectForCokernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddSomeInjectiveObjectForCokernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `SomeProjectiveObjectForKernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2 ) \mapsto \mathtt[SomeProjectiveObjectForKernelObject](arg2)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddSomeProjectiveObjectForKernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddSomeProjectiveObjectForKernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismFromBiasedWeakPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t ) \mapsto \mathtt[UniversalMorphismFromBiasedWeakPushout](a, b, t)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismFromBiasedWeakPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismFromBiasedWeakPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismFromBiasedWeakPushoutWithGivenBiasedWeakPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t, P ) \mapsto \mathtt[UniversalMorphismFromBiasedWeakPushoutWithGivenBiasedWeakPushout](a, b, t, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismFromBiasedWeakPushoutWithGivenBiasedWeakPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismFromBiasedWeakPushoutWithGivenBiasedWeakPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismFromWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t, s ) \mapsto \mathtt[UniversalMorphismFromWeakBiPushout](a, b, t, s)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismFromWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismFromWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismFromWeakBiPushoutWithGivenWeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t, s, P ) \mapsto \mathtt[UniversalMorphismFromWeakBiPushoutWithGivenWeakBiPushout](a, b, t, s, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismFromWeakBiPushoutWithGivenWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismFromWeakBiPushoutWithGivenWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismIntoBiasedWeakFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t ) \mapsto \mathtt[UniversalMorphismIntoBiasedWeakFiberProduct](a, b, t)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismIntoBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismIntoBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismIntoBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t, P ) \mapsto \mathtt[UniversalMorphismIntoBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct](a, b, t, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismIntoBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismIntoBiasedWeakFiberProductWithGivenBiasedWeakFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismIntoWeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t, s ) \mapsto \mathtt[UniversalMorphismIntoWeakBiFiberProduct](a, b, t, s)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismIntoWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismIntoWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniversalMorphismIntoWeakBiFiberProductWithGivenWeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( a, b, t, s, P ) \mapsto \mathtt[UniversalMorphismIntoWeakBiFiberProductWithGivenWeakBiFiberProduct](a, b, t, s, P)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddUniversalMorphismIntoWeakBiFiberProductWithGivenWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddUniversalMorphismIntoWeakBiFiberProductWithGivenWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakBiFiberProduct`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2, arg3 ) \mapsto \mathtt[WeakBiFiberProduct](arg2, arg3)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakBiFiberProduct",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakBiFiberProductMorphismToDirectSum`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, beta ) \mapsto \mathtt[WeakBiFiberProductMorphismToDirectSum](alpha, beta)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakBiFiberProductMorphismToDirectSum",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakBiFiberProductMorphismToDirectSum",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakBiPushout`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2, arg3 ) \mapsto \mathtt[WeakBiPushout](arg2, arg3)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakBiPushout",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakBiPushout",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakCokernelColift`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, tau ) \mapsto \mathtt[WeakCokernelColift](alpha, tau)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakCokernelColift",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakCokernelColift",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakCokernelColiftWithGivenWeakCokernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, tau, K ) \mapsto \mathtt[WeakCokernelColiftWithGivenWeakCokernelObject](alpha, tau, K)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakCokernelColiftWithGivenWeakCokernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakCokernelColiftWithGivenWeakCokernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakCokernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2 ) \mapsto \mathtt[WeakCokernelObject](arg2)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakCokernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakCokernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakCokernelProjection`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha ) \mapsto \mathtt[WeakCokernelProjection](alpha)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakCokernelProjection",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakCokernelProjection",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakCokernelProjectionWithGivenWeakCokernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, K ) \mapsto \mathtt[WeakCokernelProjectionWithGivenWeakCokernelObject](alpha, K)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakCokernelProjectionWithGivenWeakCokernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakCokernelProjectionWithGivenWeakCokernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakKernelEmbedding`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha ) \mapsto \mathtt[WeakKernelEmbedding](alpha)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakKernelEmbedding",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakKernelEmbedding",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakKernelEmbeddingWithGivenWeakKernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, K ) \mapsto \mathtt[WeakKernelEmbeddingWithGivenWeakKernelObject](alpha, K)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakKernelEmbeddingWithGivenWeakKernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakKernelEmbeddingWithGivenWeakKernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakKernelLift`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, tau ) \mapsto \mathtt[WeakKernelLift](alpha, tau)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakKernelLift",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakKernelLift",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakKernelLiftWithGivenWeakKernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( alpha, tau, K ) \mapsto \mathtt[WeakKernelLiftWithGivenWeakKernelObject](alpha, tau, K)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakKernelLiftWithGivenWeakKernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakKernelLiftWithGivenWeakKernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup


#! @BeginGroup
#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `WeakKernelObject`.
#! Optionally, a weight (default: 100) can be specified which should roughly correspond
#! to the computational complexity of the function (lower weight == less complex == faster execution).
#! $F: ( arg2 ) \mapsto \mathtt[WeakKernelObject](arg2)$.
#! @Returns nothing
#! @Arguments C, F
@DeclareOperation( "AddWeakKernelObject",
                  [ IsCapCategory, IsFunction ] );

#! @Arguments C, F, weight
@DeclareOperation( "AddWeakKernelObject",
                  [ IsCapCategory, IsFunction, IsInt ] );
#! @EndGroup
