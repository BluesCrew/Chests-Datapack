#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
tag @s add PlayerInDistance
execute if score @s CardinalRot matches 1 run setblock ~ ~ ~ chest[facing=south]
execute if score @s CardinalRot matches 2 run setblock ~ ~ ~ chest[facing=west]
execute if score @s CardinalRot matches 3 run setblock ~ ~ ~ chest[facing=north]
execute if score @s CardinalRot matches 4 run setblock ~ ~ ~ chest[facing=east]
data modify block ~ ~ ~ Items set from entity @s data.Items
clone ~ ~1 ~ ~ ~1 ~ ~ 0 ~
setblock ~ ~1 ~ minecraft:glass
#------------------------------------------#
