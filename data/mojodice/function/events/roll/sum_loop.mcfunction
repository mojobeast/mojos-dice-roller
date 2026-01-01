execute unless data storage mojodice:events/roll Temp.results_to_sum[0] run return 0

data modify storage mojodice:events/roll Temp.result_to_sum \
    set from storage mojodice:events/roll Temp.results_to_sum[0]

data remove storage mojodice:events/roll Temp.results_to_sum[0]

execute store result score @s mojodice.roll_result \
    run data get storage mojodice:events/roll Temp.result_to_sum

scoreboard players operation @s mojodice.total += @s mojodice.roll_result

function mojodice:events/roll/sum_loop