data remove storage mojodice:title ViewModel
data modify storage mojodice:title Temp.roll_result set from storage mojodice:main Model.last_roll_result
function mojodice:title/viewmodel/loop_die_sets
execute store result storage mojodice:title ViewModel.modifier int 1 run scoreboard players get @s mojodice.modifier
function mojodice:title/viewmodel/add_modifier with storage mojodice:main Model.modifier