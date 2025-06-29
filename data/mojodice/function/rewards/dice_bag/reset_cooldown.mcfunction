execute store result score #reset mojodice.dice_bag.cooldown \
    run time query gametime
    
execute as @a if score @s mojodice.dice_bag.cooldown <= #reset mojodice.dice_bag.cooldown \
    run advancement revoke @s only mojodice:dice_bag/right_click