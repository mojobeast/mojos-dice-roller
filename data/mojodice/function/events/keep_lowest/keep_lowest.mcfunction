$scoreboard players add @s mojodice.d$(event_die_size)_keep_lowest 1

$execute if score @s mojodice.d$(event_die_size) matches 1 \
    run scoreboard players set @s mojodice.d$(event_die_size) 2

$execute if score @s mojodice.d$(event_die_size)_keep_lowest >= @s mojodice.d$(event_die_size) \
    run scoreboard players set @s mojodice.d$(event_die_size)_keep_lowest 0

$execute if score @s mojodice.d$(event_die_size)_keep_highest matches 1.. \
    run scoreboard players set @s mojodice.d$(event_die_size)_keep_highest 0

function mojodice:roll_dialog/show