execute store result score @s mojodice.dice_bag.cooldown \
    run time query gametime

scoreboard players add @s mojodice.dice_bag.cooldown 10

schedule function mojodice:rewards/dice_bag/reset_cooldown 10t append