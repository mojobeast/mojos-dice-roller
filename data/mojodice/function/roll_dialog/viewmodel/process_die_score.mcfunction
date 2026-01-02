$execute store result storage mojodice:roll_dialog ViewModel.d$(die_size) int 1 \
    run scoreboard players get @s mojodice.d$(die_size)

$execute store result storage mojodice:roll_dialog \
    ViewModel.d$(die_size)_keep_highest int 1 \
    run scoreboard players get @s mojodice.d$(die_size)_keep_highest

$execute store result storage mojodice:roll_dialog \
    ViewModel.d$(die_size)_keep_lowest int 1 \
    run scoreboard players get @s mojodice.d$(die_size)_keep_lowest

$execute unless score @s mojodice.d$(die_size) matches 1.. run return 0

$data modify storage mojodice:roll_dialog ViewModel.dice_formula \
    append value {"die_size": $(die_size)}

$data modify storage mojodice:roll_dialog ViewModel.dice_formula[-1].count \
    set from storage mojodice:roll_dialog ViewModel.d$(die_size)

$data modify storage mojodice:roll_dialog ViewModel.dice_formula[-1].keep_highest \
    set from storage mojodice:roll_dialog ViewModel.d$(die_size)_keep_highest

$data modify storage mojodice:roll_dialog ViewModel.dice_formula[-1].keep_lowest \
    set from storage mojodice:roll_dialog ViewModel.d$(die_size)_keep_lowest