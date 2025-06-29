execute unless data storage mojodice:title Temp.roll_result.die_sets[0] run return 0
data modify storage mojodice:title Temp.current_die_set set from storage mojodice:title Temp.roll_result.die_sets[0]
data remove storage mojodice:title Temp.roll_result.die_sets[0]
function mojodice:title/viewmodel/add_die_count with storage mojodice:title Temp.current_die_set
data modify storage mojodice:title ViewModel.roll_results append value {"text": " (", "color": "white"}
function mojodice:title/viewmodel/loop_dice
data modify storage mojodice:title ViewModel.roll_results append value {"text": ")", "color": "white"}
execute if data storage mojodice:title Temp.roll_result.die_sets[0] run data modify storage mojodice:title ViewModel.roll_results append value {"text": " + ", "color": "white"}
function mojodice:title/viewmodel/loop_die_sets