$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "d$(die_size)",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.add_die set $(die_size)"\
    }\
}

$function mojodice:roll_dialog/viewmodel/keep_dice_button {\
    "die_size": $(die_size),\
    "highest_or_lowest": "highest",\
    "keep_dice_count": $(keep_highest)\
}

$function mojodice:roll_dialog/viewmodel/keep_dice_button {\
    "die_size": $(die_size),\
    "highest_or_lowest": "lowest",\
    "keep_dice_count": $(keep_lowest)\
}
