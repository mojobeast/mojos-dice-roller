data modify storage mojodice:roll_dialog Temp.dice_formula set from storage mojodice:roll_dialog ViewModel.dice_formula
function mojodice:roll_dialog/viewmodel/loop_dice_formula
function mojodice:roll_dialog/viewmodel/add_modifier with storage mojodice:main Model.modifier
execute unless data storage mojodice:roll_dialog ViewModel.dice_formula_text[0] run data modify storage mojodice:roll_dialog ViewModel.dice_formula_text set value [{"text": " "}]