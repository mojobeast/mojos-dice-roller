execute store result storage mojodice:main Model.last_event int 1 run scoreboard players get @s mojodice.event

execute if score @s mojodice.event matches 1 \
    run function mojodice:events/roll with storage mojodice:roll_dialog ViewModel

execute if score @s mojodice.event matches 2 \
    run function mojodice:events/cancel

execute if score @s mojodice.event matches 3 \
    run function mojodice:events/increment_modifier

execute if score @s mojodice.event matches 4 \
    run function mojodice:events/decrement_modifier

scoreboard players reset @s mojodice.event