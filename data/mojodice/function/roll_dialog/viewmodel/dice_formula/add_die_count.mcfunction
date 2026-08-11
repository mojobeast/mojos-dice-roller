$data modify storage mojodice:roll_dialog ViewModel.dice_formula_text \
    append value "$(count)d$(die_size)"

$execute unless data storage mojodice:roll_dialog Temp.current_die_set{keep_highest:0} \
    run data modify storage mojodice:roll_dialog ViewModel.dice_formula_text \
    append value "↑$(keep_highest)"

$execute unless data storage mojodice:roll_dialog Temp.current_die_set{keep_lowest:0} \
    run data modify storage mojodice:roll_dialog ViewModel.dice_formula_text \
    append value "↓$(keep_lowest)"