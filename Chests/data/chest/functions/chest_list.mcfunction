#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------GET PLAYER ROT--------------#
execute as @a[tag=PlacingChest] run function chest:get_cardinal
#---------------PLACE CHEST----------------#
execute if entity @s[tag=LinkedChestPlacer] run function chest:place_chest/linked_chest
execute if entity @s[tag=CamoufChestPlacer] run function chest:place_chest/camouflaged_chest
execute if entity @s[tag=MimicChestPlacer] run function chest:place_chest/mimic
# execute if entity @s[tag=...ChestPlacer] run function chest:place_chest/...
# execute if entity @s[tag=...ChestPlacer] run function chest:place_chest/...
# execute if entity @s[tag=...ChestPlacer] run function chest:place_chest/...
# execute if entity @s[tag=...ChestPlacer] run function chest:place_chest/...
# execute if entity @s[tag=...ChestPlacer] run function chest:place_chest/...
#-----------------RESETS-------------------#
tag @e[tag=NewChest] remove NewChest
#------------------------------------------#