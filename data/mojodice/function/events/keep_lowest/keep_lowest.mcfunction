$scoreboard players add @s mojodice.d$(event_die_size)_keep_lowest 

$execute if score @s mojodice.d$(event_die_size)_keep_lowest >= @s mojodice.d$(die_size)
    run scoreboard players set @s mojodice.d$(event_die_size)_keep_lowest 0

$execute if score @s mojodice.d$(event_die_size)_keep_highest matches 1..
    run scoreboard players set @s mojodice.d$(event_die_size)_keep_highest 0

function mojodice:roll_dialog/show