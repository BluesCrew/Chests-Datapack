setblock ~ ~ ~ barrel
summon marker ~ ~ ~ {Tags:["NewChest","Chest","LinkedChest"]}
scoreboard players operation @e[tag=NewChest] Color1 = @s Color1
scoreboard players operation @e[tag=NewChest] Color2 = @s Color2
scoreboard players operation @e[tag=NewChest] Color3 = @s Color3
tag @e[tag=NewChest] remove NewChest