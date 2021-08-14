#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
tag @s add This
data modify storage chest:crafts Item1 set from entity @s Item
data modify storage chest:crafts Item2 set from entity @e[tag=!This,type=item,distance=..1,limit=1] Item
execute if data storage chest:crafts Item2{id:"minecraft:chest"} if data storage chest:crafts {Item1:{id:"minecraft:ender_pearl",Count:4b}} run function chest:crafts/linked_chest
execute if data storage chest:crafts Item1{id:"minecraft:chest"} if data storage chest:crafts {Item2:{id:"minecraft:ender_pearl",Count:4b}} run function chest:crafts/linked_chest
tag @s remove This
tag @s add Registered
#------------------------------------------#
