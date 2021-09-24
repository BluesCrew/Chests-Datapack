#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
execute as @e[tag=Chest] at @s run function chest:chest_main

execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:chest",Count:1b}}] at @s run function chest:crafts/check
# execute as @e[type=item,nbt={OnGround:1b},tag=!Registered] at @s run function chest:crafts/main

execute as @e[tag=MimicEntity,nbt={HurtTime:10s}] at @s run function chest:chests/mimic/entity_hurt
execute as @e[tag=MimicEntity] at @s run particle witch ~ ~ ~ 0.2 0.2 0.2 0.1 6 normal
execute as @e[tag=MimicEntity] at @s as @e[tag=MimicMarker] if score @s MimicID = @e[tag=MimicEntity,sort=nearest,limit=1] MimicID run tp @s ~ ~ ~
execute as @e[tag=MimicMarker] at @s unless entity @e[tag=MimicEntity,distance=..1] run function chest:chests/mimic/entity_killed
#------------------------------------------#
