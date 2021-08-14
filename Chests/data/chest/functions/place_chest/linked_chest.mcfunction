#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
execute if block ~ ~ ~ #chest:not_full if block ~ ~ ~ hopper run summon marker ~ ~0.33 ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute if block ~ ~ ~ #chest:not_full if block ~ ~ ~ #minecraft:slabs run summon marker ~ ~0.5 ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute if block ~ ~ ~ #chest:not_full if block ~ ~ ~ minecraft:chest run summon marker ~ ~0.20 ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute if block ~ ~ ~ #chest:not_full if block ~ ~ ~ minecraft:trapped_chest run summon marker ~ ~0.33 ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute if block ~ ~ ~ #chest:not_full unless block ~ ~ ~ minecraft:chest unless block ~ ~ ~ minecraft:trapped_chest unless block ~ ~ ~ hopper unless block ~ ~ ~ #minecraft:slabs run summon marker ~ ~0.5 ~ {Tags:["NewChest","Chest","LinkedChest"]}

execute unless block ~ ~ ~ #chest:not_full run summon marker ~ ~ ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute as @e[tag=NewChest] at @s if block ~ ~ ~ #chest:not_full positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run function chest:place_chest/linked_chest/place_north
execute as @e[tag=NewChest] at @s if block ~ ~ ~ #chest:not_full positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run function chest:place_chest/linked_chest/place_east
execute as @e[tag=NewChest] at @s if block ~ ~ ~ #chest:not_full positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run function chest:place_chest/linked_chest/place_south
execute as @e[tag=NewChest] at @s if block ~ ~ ~ #chest:not_full positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run function chest:place_chest/linked_chest/place_west
execute as @e[tag=NewChest] at @s unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run function chest:place_chest/linked_chest/place_north
execute as @e[tag=NewChest] at @s unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run function chest:place_chest/linked_chest/place_east
execute as @e[tag=NewChest] at @s unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run function chest:place_chest/linked_chest/place_south
execute as @e[tag=NewChest] at @s unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run function chest:place_chest/linked_chest/place_west
#-----------------INITIATE-----------------#
execute as @e[tag=NewChest] run function chest:place_chest/linked_chest/init
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor1] ChestButton 1
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor2] ChestButton 2
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor3] ChestButton 3
execute as @e[tag=LinkedChest] at @s run function chest:chests/linked_chest/check_link
team join NoCol @e[tag=NewChestLinkColor]
execute if block ~ ~ ~ #chest:not_full as @e[tag=NewChestLinkColor] at @s run tp @s ~ ~-0.30 ~
tag @e remove NewChestLinkColor
#----------------PLAY SOUND----------------#
execute as @a[tag=PlacingChest] at @s run playsound block.wood.place block @s ~ ~ ~ 1 0.8 1
#-----------------MESSAGE------------------#
tellraw @a[tag=PlacingChest] ["",{"text":"Chest+ >","color":"dark_red"},{"text":" You successfuly placed a linked chest."}]
#------------------------------------------#
