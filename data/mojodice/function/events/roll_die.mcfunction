execute store result storage mojodice:events TempRollDie.die_size int 1 \
    run scoreboard players get @s mojodice.event.roll_die

function mojodice:events/roll_die_macro with storage mojodice:events TempRollDie

title @s title [{"text": "Rolled: "},{"score": {"objective": "mojodice.roll_result", "name": "*"}, "color": "gold"}]

scoreboard players reset @s mojodice.event.roll_die

dialog clear @s
function mojodice:rewards/dice_bag/reset