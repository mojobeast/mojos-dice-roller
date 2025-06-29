$execute unless score @s mojodice.d$(die_size) matches 1.. run return 0
$execute unless data storage mojodice:events/roll Temp.last_die_set.count run execute store result storage mojodice:events/roll Temp.last_die_set.count int 1 run scoreboard players get @s mojodice.d$(die_size)
$execute store result score @s mojodice.roll_result run random value 1..$(die_size)
execute store result storage mojodice:events/roll Temp.last_die_result int 1 run scoreboard players get @s mojodice.roll_result
data modify storage mojodice:events/roll Temp.last_die_set.die_results append from storage mojodice:events/roll Temp.last_die_result
scoreboard players operation @s mojodice.total += @s mojodice.roll_result
$scoreboard players remove @s mojodice.d$(die_size) 1
$execute if score @s mojodice.d$(die_size) matches 0 run data modify storage mojodice:events/roll Temp.last_die_set.die_size set value $(die_size)
$execute if score @s mojodice.d$(die_size) matches 0 run data modify storage mojodice:main Model.last_roll_result.die_sets append from storage mojodice:events/roll Temp.last_die_set
$execute if score @s mojodice.d$(die_size) matches 0 run data remove storage mojodice:events/roll Temp
$function mojodice:events/roll/loop {"die_size": $(die_size)}