# SPDX-License-Identifier: GPL-2.0-or-later
# FreydCategoriesForCAP: Freyd categories - Formal (co)kernels for additive categories
#
# Declarations
#
#! @Chapter Grade filtration

##
@KeyDependentOperation( "GradeFiltrationNthNaturalTransformation",
                       IsCapCategory, IsInt, ReturnTrue );

##
@KeyDependentOperation( "GradeFiltrationNthNaturalTransformationComponent",
                       IsAdelmanCategoryObject, IsInt, ReturnTrue );

##
@KeyDependentOperation( "GradeFiltrationNthMonomorphism",
                       IsFreydCategoryObject, IsInt, ReturnTrue );
