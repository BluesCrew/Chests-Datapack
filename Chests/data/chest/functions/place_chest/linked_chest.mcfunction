#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
execute if block ~ ~ ~ hopper positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run function chest:place_chest/linked_chest/place_north
execute if block ~ ~ ~ hopper positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run function chest:place_chest/linked_chest/place_east
execute if block ~ ~ ~ hopper positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run function chest:place_chest/linked_chest/place_south
execute if block ~ ~ ~ hopper positioned ~ ~1 ~ if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run function chest:place_chest/linked_chest/place_west
execute unless block ~ ~ ~ hopper if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run function chest:place_chest/linked_chest/place_north
execute unless block ~ ~ ~ hopper if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run function chest:place_chest/linked_chest/place_east
execute unless block ~ ~ ~ hopper if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run function chest:place_chest/linked_chest/place_south
execute unless block ~ ~ ~ hopper if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run function chest:place_chest/linked_chest/place_west
#-----------------INITIATE-----------------#
execute if block ~ ~ ~ hopper run summon marker ~ ~0.33 ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute unless block ~ ~ ~ hopper run summon marker ~ ~ ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute as @e[tag=NewChest] run function chest:place_chest/linked_chest/init
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor1] ChestButton 1
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor2] ChestButton 2
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor3] ChestButton 3
execute as @e[tag=LinkedChest] at @s run function chest:chests/linked_chest/check_link
team join NoCol @e[tag=NewChestLinkColor]
execute if block ~ ~ ~ hopper as @e[tag=NewChestLinkColor] at @s run tp @s ~ ~-0.29 ~
tag @e remove NewChestLinkColor
#----------------PLAY SOUND----------------#
execute as @a[tag=PlacingChest] at @s run playsound block.wood.place block @s ~ ~ ~ 1 0.8 1
#-----------------MESSAGE------------------#
tellraw @a[tag=PlacingChest] ["",{"text":"Chest+ >","color":"dark_red"},{"text":" You successfuly placed a linked chest."}]
#------------------------------------------#
