#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DETECT BREAKING-------------#
execute if block ~ ~ ~ chest[facing=west] run function chest:chests/linked_chest/respawn_villagers/east
execute if block ~ ~ ~ chest[facing=east] run function chest:chests/linked_chest/respawn_villagers/west
execute if block ~ ~ ~ chest[facing=north] run function chest:chests/linked_chest/respawn_villagers/south
execute if block ~ ~ ~ chest[facing=south] run function chest:chests/linked_chest/respawn_villagers/north
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor1] ChestButton 1
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor2] ChestButton 2
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor3] ChestButton 3
team join NoCol @e[tag=NewChestLinkColor]
scoreboard players operation @e[tag=NewChestLinkColor,scores={ChestButton=1}] Color = @s Color1 
scoreboard players operation @e[tag=NewChestLinkColor,scores={ChestButton=2}] Color = @s Color2 
scoreboard players operation @e[tag=NewChestLinkColor,scores={ChestButton=3}] Color = @s Color3 
execute as @e[tag=NewChestLinkColor] run function chest:chests/linked_chest/update_color
tag @e remove NewChestLinkColor
#------------------------------------------#
