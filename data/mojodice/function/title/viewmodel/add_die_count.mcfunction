$data modify storage mojodice:title ViewModel.roll_results \
    append value {"text": "$(count)d$(die_size)", "color": "dark_aqua"}

$execute unless data storage mojodice:title Temp.current_die_set{keep_highest:0} \
    run data modify storage mojodice:title ViewModel.roll_results \
    append value {"text": "kh$(keep_highest)", "color": "aqua"}

$execute unless data storage mojodice:title Temp.current_die_set{keep_lowest:0} \
    run data modify storage mojodice:title ViewModel.roll_results \
    append value {"text": "kl$(keep_lowest)", "color": "aqua"}