$execute unless score @s mojodice.d$(die_size) matches 2.. \
    run return run function mojodice:roll_dialog/viewmodel/dummy_button

$data modify storage mojodice:roll_dialog ViewModel.actions append value {\
    "label": "",\
    "width": 100,\
    "action": {\
        "type": "run_command",\
        "command": "trigger mojodice.event.keep_$(highest_or_lowest) set $(die_size)"\
    }\
}

$execute unless score @s mojodice.d$(die_size)_keep_$(highest_or_lowest) matches 1.. \
    run return run data modify storage mojodice:roll_dialog ViewModel.actions[-1].label \
    set value {"text": "❌ keep $(highest_or_lowest)", "color": "dark_gray"}

$execute if score @s mojodice.d$(die_size) matches 2 \
    run return run data modify storage mojodice:roll_dialog ViewModel.actions[-1].label \
    set value "✅ keep $(highest_or_lowest)"

$return run data modify storage mojodice:roll_dialog ViewModel.actions[-1].label \
    set value "✅ keep $(highest_or_lowest) $(keep_dice_count)"
