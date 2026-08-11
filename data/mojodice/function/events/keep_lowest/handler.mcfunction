execute store result storage mojodice:main Model.event_die_size int 1 \
    run scoreboard players get @s mojodice.event.keep_lowest

function mojodice:events/keep_lowest/keep_lowest with storage mojodice:main Model

scoreboard players set @s mojodice.event.keep_lowest 0