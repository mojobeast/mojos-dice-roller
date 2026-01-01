data modify storage mojodice:events/roll Temp.results_to_sum \
    set from storage mojodice:events/roll Temp.last_die_set.die_results 

function mojodice:events/roll/sum_loop

data remove storage mojodice:events/roll Temp