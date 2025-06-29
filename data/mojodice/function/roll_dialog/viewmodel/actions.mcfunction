$function mojodice:roll_dialog/viewmodel/die_button {"count": "$(d4)", "die_size": 4}
$function mojodice:roll_dialog/viewmodel/die_button {"count": "$(d6)", "die_size": 6}
$function mojodice:roll_dialog/viewmodel/die_button {"count": "$(d8)", "die_size": 8}
$function mojodice:roll_dialog/viewmodel/die_button {"count": "$(d10)", "die_size": 10}
$function mojodice:roll_dialog/viewmodel/die_button {"count": "$(d12)", "die_size": 12}
$function mojodice:roll_dialog/viewmodel/die_button {"count": "$(d20)", "die_size": 20}
data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "Modifier -1",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 4"\
    }\
}
data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "Modifier +1",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 3"\
    }\
}
data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "Roll!",\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event set 1"\
    }\
}