execute unless data storage mojodice:title Temp.current_die_set.die_results[0] run return 0
data modify storage mojodice:title Temp.current_die_result set from storage mojodice:title Temp.current_die_set.die_results[0]
data remove storage mojodice:title Temp.current_die_set.die_results[0]
function mojodice:title/viewmodel/add_die_result with storage mojodice:title Temp
execute if data storage mojodice:title Temp.current_die_set.die_results[0] run data modify storage mojodice:title ViewModel.roll_results append value {"text": " + ", "color": "white"}
function mojodice:title/viewmodel/loop_dice