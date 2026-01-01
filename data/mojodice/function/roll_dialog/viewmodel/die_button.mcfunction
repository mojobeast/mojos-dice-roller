$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "d$(die_size)",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.add_die set $(die_size)"\
    }\
}

$function mojodice:roll_dialog/viewmodel/keep_highest_button {"die_size": $(die_size)}

$function mojodice:roll_dialog/viewmodel/keep_lowest_button {"die_size": $(die_size)}