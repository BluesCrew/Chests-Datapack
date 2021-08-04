#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#---------------PLACE CHEST----------------#
# North = 1, East = 2, South = 3, West = 4
execute if entity @a[tag=PlacingChest,y_rotation=135.1..-135.1] run scoreboard players set @s CardinalRot 1
execute if entity @a[tag=PlacingChest,y_rotation=-134.9..-45.1] run scoreboard players set @s CardinalRot 2
execute if entity @a[tag=PlacingChest,y_rotation=-45.0..45.0] run scoreboard players set @s CardinalRot 3
execute if entity @a[tag=PlacingChest,y_rotation=45.1..135.0] run scoreboard players set @s CardinalRot 4
#------------------------------------------#
