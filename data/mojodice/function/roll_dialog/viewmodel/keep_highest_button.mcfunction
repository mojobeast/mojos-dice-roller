$execute unless score @s mojodice.d$(die_size) matches 2.. \
    run return run function mojodice:roll_dialog/viewmodel/dummy_button

$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "keep highest",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.keep_highest set $(die_size)"\
    }\
}