execute store result entity @e[tag=LinkStorageMover,limit=1] Pos[0] double 1 run scoreboard players get @s Color1
execute store result entity @e[tag=LinkStorageMover,limit=1] Pos[1] double 1 run scoreboard players get @s Color2
execute store result entity @e[tag=LinkStorageMover,limit=1] Pos[2] double 1 run scoreboard players get @s Color3
execute at @e[tag=LinkStorageMover,limit=1] unless block ~ ~ ~ barrel run function chest:chest_backup/create
execute at @e[tag=LinkStorageMover,limit=1] if block ~ ~ ~ barrel run data modify storage chest:compare Storage set from block ~ ~ ~ Items
