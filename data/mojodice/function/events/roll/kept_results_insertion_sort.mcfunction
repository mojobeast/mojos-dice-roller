execute unless data storage mojodice:events/roll Temp.old_kept_die_results[0] \
    run return \
    run data modify storage mojodice:events/roll Temp.last_die_set.kept_die_results \
    append from storage mojodice:events/roll Temp.last_die_result

data modify storage mojodice:events/roll Temp.old_kept_die_result \
    set from storage mojodice:events/roll Temp.old_kept_die_results[0]

data remove storage mojodice:events/roll Temp.old_kept_die_results[0]

execute store result score #old_kept_die_result mojodice.temp_variables \
    run data get storage mojodice:events/roll Temp.old_kept_die_result.roll

execute store result score #last_die_result mojodice.temp_variables \
    run data get storage mojodice:events/roll Temp.last_die_result.roll

scoreboard players set #use_new_die_result mojodice.temp_variables 0

execute unless data storage mojodice:events/roll Temp.last_die_set{keep_highest:0} \
    if score #last_die_result mojodice.temp_variables \
    > #old_kept_die_result mojodice.temp_variables \
    run scoreboard players set #use_new_die_result mojodice.temp_variables 1

execute unless data storage mojodice:events/roll Temp.last_die_set{keep_lowest:0} \
    if score #last_die_result mojodice.temp_variables \
    < #old_kept_die_result mojodice.temp_variables \
    run scoreboard players set #use_new_die_result mojodice.temp_variables 1

execute if score #use_new_die_result mojodice.temp_variables matches 1 \
    run data modify storage mojodice:events/roll Temp.last_die_set.kept_die_results \
    append from storage mojodice:events/roll Temp.last_die_result

data modify storage mojodice:events/roll Temp.last_die_set.kept_die_results \
    append from storage mojodice:events/roll Temp.old_kept_die_result

execute if score #use_new_die_result mojodice.temp_variables matches 1 \
    run return \
    run data modify storage mojodice:events/roll Temp.last_die_set.kept_die_results \
    append from storage mojodice:events/roll Temp.old_kept_die_results[]

function mojodice:events/roll/kept_results_insertion_sort