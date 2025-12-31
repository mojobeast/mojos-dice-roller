execute store result storage mojodice:main Model.event_die_size int 1 \
    run scoreboard players get @s mojodice.event.keep_highest

function mojodice:events/keep_highest/keep_highest with storage mojodice:main Model

scoreboard players set @s mojodice.event.keep_highest 0