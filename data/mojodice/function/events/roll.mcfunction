scoreboard players set @s mojodice.total 0
data remove storage mojodice:main Model.last_roll_result
function mojodice:events/roll/loop {"die_size": 4}
function mojodice:events/roll/loop {"die_size": 6}
function mojodice:events/roll/loop {"die_size": 8}
function mojodice:events/roll/loop {"die_size": 10}
function mojodice:events/roll/loop {"die_size": 12}
function mojodice:events/roll/loop {"die_size": 20}
function mojodice:events/roll/add_modifier
execute store result storage mojodice:main Model.last_roll_result.total int 1 run scoreboard players get @s mojodice.total
function mojodice:title/show
function mojodice:events/update_modifier
dialog clear @s
function mojodice:rewards/dice_bag/reset