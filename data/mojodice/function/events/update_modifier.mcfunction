execute store result storage mojodice:main Model.modifier.value int 1 run scoreboard players get @s mojodice.modifier
execute if score @s mojodice.modifier matches 0.. store result storage mojodice:main Model.modifier.absolute_value int 1 run scoreboard players get @s mojodice.modifier
data modify storage mojodice:main Model.modifier.sign set value 0
execute if score @s mojodice.modifier matches 1.. run data modify storage mojodice:main Model.modifier.sign set value 1
execute if score @s mojodice.modifier matches ..-1 run data modify storage mojodice:main Model.modifier.sign set value -1
execute unless score @s mojodice.modifier matches 0.. store result storage mojodice:main Model.modifier.absolute_value int -1 run scoreboard players get @s mojodice.modifier
function mojodice:roll_dialog/show