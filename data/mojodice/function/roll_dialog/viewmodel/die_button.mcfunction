$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "d$(die_size)",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.add_die set $(die_size)"\
    }\
}

$execute if score @s mojodice.d$(die_size) matches 2.. \
    run function mojodice:roll_dialog/viewmodel/keep_highest_button {"die_size": $(die_size)}

$execute if score @s mojodice.d$(die_size) matches 2.. \
    run function mojodice:roll_dialog/viewmodel/keep_lowest_button {"die_size": $(die_size)}