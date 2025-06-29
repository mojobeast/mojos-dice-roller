data remove storage mojodice:roll_dialog ViewModel
function mojodice:roll_dialog/viewmodel/process_die_score {"die_size": 4}
function mojodice:roll_dialog/viewmodel/process_die_score {"die_size": 6}
function mojodice:roll_dialog/viewmodel/process_die_score {"die_size": 8}
function mojodice:roll_dialog/viewmodel/process_die_score {"die_size": 10}
function mojodice:roll_dialog/viewmodel/process_die_score {"die_size": 12}
function mojodice:roll_dialog/viewmodel/process_die_score {"die_size": 20}
execute store result storage mojodice:roll_dialog ViewModel.modifier int 1 run scoreboard players get @s mojodice.modifier
function mojodice:roll_dialog/viewmodel/dice_formula with storage mojodice:roll_dialog ViewModel
function mojodice:roll_dialog/viewmodel/actions with storage mojodice:roll_dialog ViewModel
data modify storage mojodice:roll_dialog ViewModel.events.roll set value 1