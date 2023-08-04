#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.01 25
playsound minecraft:block.anvil.use master @p ~ ~ ~ 0.4 0
kill @e[type=item,distance=0.1..1,nbt={OnGround:1b,Item:{id:"minecraft:ender_pearl",Count:1b}},limit=1]
kill @s
loot spawn ~ ~ ~ loot chest:linked_chest
#------------------------------------------#
