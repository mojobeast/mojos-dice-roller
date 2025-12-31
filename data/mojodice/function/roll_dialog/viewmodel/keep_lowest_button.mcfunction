$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "d$(die_size) - keep lowest",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.keep_lowest set $(die_size)"\
    }\
}