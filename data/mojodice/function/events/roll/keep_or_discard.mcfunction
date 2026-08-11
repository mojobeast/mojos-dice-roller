execute store result score #dice_to_keep mojodice.temp_variables \
    run data get storage mojodice:events/roll Temp.last_die_set.count

execute unless data storage mojodice:events/roll Temp.last_die_set{keep_highest:0} \
    store result score #dice_to_keep mojodice.temp_variables \
    run data get storage mojodice:events/roll Temp.last_die_set.keep_highest

execute unless data storage mojodice:events/roll Temp.last_die_set{keep_lowest:0} \
    store result score #dice_to_keep mojodice.temp_variables \
    run data get storage mojodice:events/roll Temp.last_die_set.keep_lowest

data modify storage mojodice:events/roll Temp.old_kept_die_results \
    set from storage mojodice:events/roll Temp.last_die_set.kept_die_results

data modify storage mojodice:events/roll Temp.last_die_set.kept_die_results \
    set value []

function mojodice:events/roll/kept_results_insertion_sort
    
execute store result score #kept_dice_count mojodice.temp_variables \
    run data get storage mojodice:events/roll Temp.last_die_set.kept_die_results

execute if score #kept_dice_count mojodice.temp_variables > #dice_to_keep mojodice.temp_variables \
    run data remove storage mojodice:events/roll Temp.last_die_set.kept_die_results[-1]