#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
scoreboard players set $MaxRC Temp 25
execute positioned ~ ~1.62 ~ run function chest:chests/mimic/raycast
scoreboard players set @s OpenChest 0
#------------------------------------------#
