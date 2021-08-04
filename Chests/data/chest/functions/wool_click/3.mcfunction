#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
tag @s add Clicking
scoreboard players set $ButtonCheckFor Temp 3
scoreboard players set $MaxRC Temp 25
execute positioned ~ ~1.62 ~ run function chest:wool_click/raycast/raycast
tag @a remove Clicking
advancement revoke @s only chest:button3_click
#------------------------------------------#
