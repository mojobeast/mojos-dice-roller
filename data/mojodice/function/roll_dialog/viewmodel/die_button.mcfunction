$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": {"text": "d$(die_size)", "color": "dark_gray"},\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.add_die set $(die_size)"\
    }\
}

$execute if score @s mojodice.d$(die_size) matches 1.. \
    run data modify storage mojodice:roll_dialog ViewModel.actions[-1].label \
    set value "$(count)d$(die_size)"

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
