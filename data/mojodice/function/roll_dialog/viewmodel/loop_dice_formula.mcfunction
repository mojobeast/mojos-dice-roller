execute unless data storage mojodice:roll_dialog Temp.dice_formula[0] run return 0
data modify storage mojodice:roll_dialog Temp.current_die_set set from storage mojodice:roll_dialog Temp.dice_formula[0]
data remove storage mojodice:roll_dialog Temp.dice_formula[0]
function mojodice:roll_dialog/viewmodel/add_die_count with storage mojodice:roll_dialog Temp.current_die_set
execute if data storage mojodice:roll_dialog Temp.dice_formula[0] run data modify storage mojodice:roll_dialog ViewModel.dice_formula_text append value {"text": " + "}
function mojodice:roll_dialog/viewmodel/loop_dice_formula