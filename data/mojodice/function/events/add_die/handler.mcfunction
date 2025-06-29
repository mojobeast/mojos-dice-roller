execute store result storage mojodice:main Model.last_added_die_size int 1 run scoreboard players get @s mojodice.event.add_die
function mojodice:events/add_die/add_die with storage mojodice:main Model
scoreboard players set @s mojodice.event.add_die 0   