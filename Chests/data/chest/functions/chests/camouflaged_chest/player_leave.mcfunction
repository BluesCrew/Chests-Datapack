#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
tag @s remove PlayerInDistance
data modify entity @s data.Items set from block ~ ~ ~ Items
clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~
clone ~ 0 ~ ~ 0 ~ ~ ~1 ~
execute if block ~ ~ ~ #chest:tile_id run data remove block ~ ~ ~ Items
#------------------------------------------#
