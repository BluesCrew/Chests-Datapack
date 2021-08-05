#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
execute if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run function chest:place_chest/linked_chest/place_north
execute if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run function chest:place_chest/linked_chest/place_east
execute if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run function chest:place_chest/linked_chest/place_south
execute if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run function chest:place_chest/linked_chest/place_west
summon marker ~ ~ ~ {Tags:["NewChest","Chest","LinkedChest"]}
execute as @e[tag=NewChest] run function chest:place_chest/linked_chest/init
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor1] ChestButton 1
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor2] ChestButton 2
scoreboard players set @e[tag=NewChestLinkColor,tag=ChestLinkColor3] ChestButton 3
tag @e remove NewChestLinkColor
execute as @a[tag=PlacingChest] at @s run playsound block.wood.place block @s ~ ~ ~ 1 0.8 1
#------------------------------------------#
