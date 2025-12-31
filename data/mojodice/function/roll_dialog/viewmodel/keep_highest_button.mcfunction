$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "d$(die_size) - keep highest",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.keep_highest set $(die_size)"\
    }\
}