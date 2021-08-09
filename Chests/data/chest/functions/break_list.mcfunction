#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DESTROY CHEST---------------#
execute if entity @s[tag=LinkedChest] run kill @e[type=item,distance=..1,nbt={Age:0s}]
execute if entity @s[tag=LinkedChest] run loot spawn ~ ~ ~ loot chest:linked_chest
#------------------------------------------#
