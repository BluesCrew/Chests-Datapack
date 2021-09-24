#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
tag @s add PlayerInDistance
execute if score @s CardinalRot matches 1 run setblock ~ ~ ~ chest[facing=south]{CustomName:'{"text":"Camouflaged Chest","bold": true,"color": "dark_green"}'}
execute if score @s CardinalRot matches 2 run setblock ~ ~ ~ chest[facing=west]{CustomName:'{"text":"Camouflaged Chest","bold": true,"color": "dark_green"}'}
execute if score @s CardinalRot matches 3 run setblock ~ ~ ~ chest[facing=north]{CustomName:'{"text":"Camouflaged Chest","bold": true,"color": "dark_green"}'}
execute if score @s CardinalRot matches 4 run setblock ~ ~ ~ chest[facing=east]{CustomName:'{"text":"Camouflaged Chest","bold": true,"color": "dark_green"}'}
data modify block ~ ~ ~ Items set from entity @s data.Items
clone ~ ~1 ~ ~ ~1 ~ ~ 0 ~
setblock ~ ~1 ~ minecraft:glass
#------------------------------------------#