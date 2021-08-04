#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
execute if data storage chest:wool {Item:{id:"minecraft:white_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:white_wool"
execute if data storage chest:wool {Item:{id:"minecraft:orange_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:orange_wool"
execute if data storage chest:wool {Item:{id:"minecraft:magenta_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:magenta_wool"
execute if data storage chest:wool {Item:{id:"minecraft:light_blue_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:light_blue_wool"
execute if data storage chest:wool {Item:{id:"minecraft:yellow_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:yellow_wool"
execute if data storage chest:wool {Item:{id:"minecraft:lime_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:lime_wool"
execute if data storage chest:wool {Item:{id:"minecraft:pink_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:pink_wool"
execute if data storage chest:wool {Item:{id:"minecraft:gray_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:gray_wool"
execute if data storage chest:wool {Item:{id:"minecraft:light_gray_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:light_gray_wool"
execute if data storage chest:wool {Item:{id:"minecraft:cyan_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:cyan_wool"
execute if data storage chest:wool {Item:{id:"minecraft:purple_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:purple_wool"
execute if data storage chest:wool {Item:{id:"minecraft:blue_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:blue_wool"
execute if data storage chest:wool {Item:{id:"minecraft:brown_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:brown_wool"
execute if data storage chest:wool {Item:{id:"minecraft:green_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:green_wool"
execute if data storage chest:wool {Item:{id:"minecraft:red_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:red_wool"
execute if data storage chest:wool {Item:{id:"minecraft:black_dye"}} run data modify entity @s ArmorItems[3].id set value "minecraft:black_wool"

function chest:wool_click/get_score
#------------------------------------------#
