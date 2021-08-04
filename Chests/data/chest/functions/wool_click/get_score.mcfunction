#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
data modify storage chest:wool Item set from entity @s ArmorItems[3]
execute if data storage chest:wool {Item:{id:"minecraft:white_wool"}} run scoreboard players set @s Color 1
execute if data storage chest:wool {Item:{id:"minecraft:orange_wool"}} run scoreboard players set @s Color 2
execute if data storage chest:wool {Item:{id:"minecraft:magenta_wool"}} run scoreboard players set @s Color 3
execute if data storage chest:wool {Item:{id:"minecraft:light_blue_wool"}} run scoreboard players set @s Color 4
execute if data storage chest:wool {Item:{id:"minecraft:yellow_wool"}} run scoreboard players set @s Color 5
execute if data storage chest:wool {Item:{id:"minecraft:lime_wool"}} run scoreboard players set @s Color 6
execute if data storage chest:wool {Item:{id:"minecraft:pink_wool"}} run scoreboard players set @s Color 7
execute if data storage chest:wool {Item:{id:"minecraft:gray_wool"}} run scoreboard players set @s Color 8
execute if data storage chest:wool {Item:{id:"minecraft:light_gray_wool"}} run scoreboard players set @s Color 9
execute if data storage chest:wool {Item:{id:"minecraft:cyan_wool"}} run scoreboard players set @s Color 10
execute if data storage chest:wool {Item:{id:"minecraft:purple_wool"}} run scoreboard players set @s Color 11
execute if data storage chest:wool {Item:{id:"minecraft:blue_wool"}} run scoreboard players set @s Color 12
execute if data storage chest:wool {Item:{id:"minecraft:brown_wool"}} run scoreboard players set @s Color 13
execute if data storage chest:wool {Item:{id:"minecraft:green_wool"}} run scoreboard players set @s Color 14
execute if data storage chest:wool {Item:{id:"minecraft:red_wool"}} run scoreboard players set @s Color 15
execute if data storage chest:wool {Item:{id:"minecraft:black_wool"}} run scoreboard players set @s Color 16

execute if entity @s[tag=ChestLinkColor1] run scoreboard players operation @e[tag=LinkedChest,distance=..1] Color1 = @s Color
execute if entity @s[tag=ChestLinkColor2] run scoreboard players operation @e[tag=LinkedChest,distance=..1] Color2 = @s Color
execute if entity @s[tag=ChestLinkColor3] run scoreboard players operation @e[tag=LinkedChest,distance=..1] Color3 = @s Color
#------------------------------------------#
