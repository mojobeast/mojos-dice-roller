execute as @a unless score @s mojodice.event matches 0 \
    run function mojodice:events/handler
scoreboard players enable @a mojodice.event

execute as @a unless score @s mojodice.event.roll_die matches 0 \
    run function mojodice:events/roll_die
scoreboard players enable @a mojodice.event.roll_die

execute as @a unless score @s dice_bag matches 0 \
    run function mojodice:events/give_dice_bag
scoreboard players enable @a dice_bag