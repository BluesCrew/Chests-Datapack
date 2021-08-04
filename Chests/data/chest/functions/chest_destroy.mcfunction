#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DESTROY CHEST---------------#
execute as @e[tag=ChestLinkColor] at @s unless block ~ ~ ~ chest run tp @s ~ ~-300 ~
execute unless entity @s[gamemode=creative] as @e[tag=LinkedChest] at @s unless block ~ ~ ~ chest run loot spawn ~ ~ ~ loot chest:linked_chest
execute unless entity @s[gamemode=creative] as @e[tag=LinkedChest] at @s unless block ~ ~ ~ chest run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:chest"}}]
execute as @e[tag=Chest] at @s unless block ~ ~ ~ chest run kill @s
scoreboard players set @s BreakChest 0
#------------------------------------------#
