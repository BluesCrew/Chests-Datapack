#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
execute if entity @s[tag=LinkedChest] run function chest:chests/linked_chest/tick_check
execute if entity @s[tag=CamoufChest] run function chest:chests/camouflaged_chest/tick_check
execute if entity @s[tag=MimicChest] run function chest:chests/mimic/tick_check
#------------------------------------------#
