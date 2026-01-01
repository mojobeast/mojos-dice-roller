execute unless data storage mojodice:events/roll Temp.last_die_set.kept_die_results[0] \
    run return 0

data modify storage mojodice:events/roll Temp.kept_result \
    set from storage mojodice:events/roll Temp.last_die_set.kept_die_results[0]

data remove storage mojodice:events/roll Temp.last_die_set.kept_die_results[0]

function mojodice:events/roll/set_roll_as_kept \
    with storage mojodice:events/roll Temp.kept_result

function mojodice:events/roll/sum_loop