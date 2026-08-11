function mojodice:events/roll/keep_loop

data modify storage mojodice:events/roll Temp.results_to_sum \
    set from storage mojodice:events/roll Temp.last_die_set.die_results 

function mojodice:events/roll/sum_loop

data modify storage mojodice:main Model.last_roll_result.die_sets \
    append from storage mojodice:events/roll Temp.last_die_set
    
data modify storage mojodice:events/roll Debug set from storage mojodice:events/roll Temp

data remove storage mojodice:events/roll Temp