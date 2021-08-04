#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
tag @s add PlacingChest
execute as @e[tag=ChestPlacer] at @s run function chest:chest_list
tp @e[tag=ChestPlacer] ~ -600 ~
tag @a remove PlacingChest
#------------------RESET-------------------#
advancement revoke @s only chest:use_egg
#------------------------------------------#
