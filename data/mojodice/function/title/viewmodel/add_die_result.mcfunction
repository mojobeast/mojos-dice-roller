$execute if data storage mojodice:title Temp{current_die_kept:true} \
    run return \
    run data modify storage mojodice:title ViewModel.roll_results \
    append value {"text": "$(current_die_result)", "color": "gold"}

$data modify storage mojodice:title ViewModel.roll_results \
    append value {"text": "$(current_die_result)", "color": "gray", "strikethrough": true}