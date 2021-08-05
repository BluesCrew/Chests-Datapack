execute store result entity @e[tag=LinkStorageMover,limit=1] Pos[0] double 1 run scoreboard players get @s Color1
execute store result entity @e[tag=LinkStorageMover,limit=1] Pos[1] double 1 run scoreboard players get @s Color2
execute store result entity @e[tag=LinkStorageMover,limit=1] Pos[2] double 1 run scoreboard players get @s Color3
execute unless block ~ ~ ~ barrel at @e[tag=LinkStorageMover,limit=1] run function chest:chest_backup/create