$execute unless score @s mojodice.d$(die_size) matches 1.. \
    run return run function mojodice:events/roll/sum

$execute unless data storage mojodice:events/roll Temp.last_die_set.count \
    run execute store result storage mojodice:events/roll Temp.last_die_set.count int 1 \
    run scoreboard players get @s mojodice.d$(die_size)

$execute store result score @s mojodice.roll_result run random value 1..$(die_size)

data modify storage mojodice:events/roll Temp.last_die_result \
    set value {"kept": false}

execute store result storage mojodice:events/roll Temp.last_die_result.roll int 1 \
    run scoreboard players get @s mojodice.roll_result

execute store result storage mojodice:events/roll Temp.last_die_result.index int 1 \
    run data get storage mojodice:events/roll Temp.last_die_set.die_results

data modify storage mojodice:events/roll Temp.last_die_set.die_results \
    append from storage mojodice:events/roll Temp.last_die_result

function mojodice:events/roll/keep_or_discard

$scoreboard players remove @s mojodice.d$(die_size) 1

$execute if score @s mojodice.d$(die_size) matches 0 \
    run data modify storage mojodice:events/roll Temp.last_die_set.die_size \
    set value $(die_size)

$execute if score @s mojodice.d$(die_size) matches 0 \
    run data modify storage mojodice:main Model.last_roll_result.die_sets \
    append from storage mojodice:events/roll Temp.last_die_set

$function mojodice:events/roll/loop {"die_size": $(die_size)}