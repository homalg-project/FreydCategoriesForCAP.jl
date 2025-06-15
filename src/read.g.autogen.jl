# SPDX-License-Identifier: GPL-2.0-or-later
# FreydCategoriesForCAP: Freyd categories - Formal (co)kernels for additive categories
#
# Reading the implementation part of the package.
#
include( "gap/FreydCategoriesForCAP.gi.autogen.jl" );

include( "gap/MethodRecordInstallations.autogen.gi.autogen.jl" );

include( "gap/CategoryOfRows.gi.autogen.jl" );
include( "gap/CategoryOfRows_as_AdditiveClosure_RingAsCategory.gi.autogen.jl" );

include( "gap/CategoryOfColumns.gi.autogen.jl" );
include( "gap/CategoryOfColumns_as_Opposite_CategoryOfRows.gi.autogen.jl" );

# include the packages for graded rows and columns
#= comment for Julia
include( "gap/CategoryOfGradedRowsAndColumns/GradedRowOrColumn.gi.autogen.jl" );
include( "gap/CategoryOfGradedRowsAndColumns/GradedRowOrColumnMorphism.gi.autogen.jl" );
include( "gap/CategoryOfGradedRowsAndColumns/CategoryOfGradedRows.gi.autogen.jl" );
include( "gap/CategoryOfGradedRowsAndColumns/CategoryOfGradedColumns.gi.autogen.jl" );
include( "gap/CategoryOfGradedRowsAndColumns/Tools.gi.autogen.jl" );
# =#

include( "gap/FreydCategoriesDerivedMethods.gi.autogen.jl" );

include( "gap/FreydCategory.gi.autogen.jl" );
include( "gap/CoFreydCategory.gi.autogen.jl" );
include( "gap/CoFreydCategory_as_Opposite_FreydCategory_Opposite.gi.autogen.jl" );

include( "gap/AdditiveClosure.gi.autogen.jl" );
include( "gap/AdditiveClosureDerivedMethods.gi.autogen.jl" );

include( "gap/CokernelImageClosure.gi.autogen.jl" );

include( "gap/AdelmanCategory.gi.autogen.jl" );

#= comment for Julia
include( "gap/GradedModulePresentationsByFreyd/GradedModulePresentationsByFreyd.gi.autogen.jl" );
# =#

include( "gap/RingsAsAbCats.gi.autogen.jl" );

include( "gap/GradeFiltration.gi.autogen.jl" );

include( "gap/SerreSubcategoryFunctions.gi.autogen.jl" );

include( "gap/Relations.gi.autogen.jl" );
