$function mojodice:roll_dialog/viewmodel/die_button {\
    "die_size": 4,\
    "count": "$(d4)",\
    "keep_highest": "$(d4_keep_highest)",\
    "keep_lowest": "$(d4_keep_lowest)"\
}

$function mojodice:roll_dialog/viewmodel/die_button {\
    "die_size": 6,\
    "count": "$(d6)",\
    "keep_highest": "$(d6_keep_highest)",\
    "keep_lowest": "$(d6_keep_lowest)"\
}

$function mojodice:roll_dialog/viewmodel/die_button {\
    "die_size": 8,\
    "count": "$(d8)",\
    "keep_highest": "$(d8_keep_highest)",\
    "keep_lowest": "$(d8_keep_lowest)"\
}

$function mojodice:roll_dialog/viewmodel/die_button {\
    "die_size": 10,\
    "count": "$(d10)",\
    "keep_highest": "$(d10_keep_highest)",\
    "keep_lowest": "$(d10_keep_lowest)"\
}

$function mojodice:roll_dialog/viewmodel/die_button {\
    "die_size": 12,\
    "count": "$(d12)",\
    "keep_highest": "$(d12_keep_highest)",\
    "keep_lowest": "$(d12_keep_lowest)"\
}

$function mojodice:roll_dialog/viewmodel/die_button {\
    "die_size": 20,\
    "count": "$(d20)",\
    "keep_highest": "$(d20_keep_highest)",\
    "keep_lowest": "$(d20_keep_lowest)"\
}

function mojodice:roll_dialog/viewmodel/dummy_button

data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "-1",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 4"\
    }\
}

data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "+1",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 3"\
    }\
}

data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "Roll!",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 1"\
    }\
}