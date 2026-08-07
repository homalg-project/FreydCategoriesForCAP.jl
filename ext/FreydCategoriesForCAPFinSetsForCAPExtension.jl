module FreydCategoriesForCAPFinSetsForCAPExtension

@nospecialize

using CAP

using MonoidalCategories

using LinearAlgebraForCAP # this is not a GAP dependency but needed for various declarations not (yet) part of MatricesForHomalg

using FreydCategoriesForCAP

using CartesianCategories

using Toposes

using FinSetsForCAP

@IMPORT_THE_WORLD()

push!(ModulesForEvaluationStack, @__MODULE__)

include("../src/gap/ProSetsAsCats.gi.autogen.jl")

push!(ModulesForEvaluationStack)

end # module FreydCategoriesForCAPFinSetsForCAPExtension
