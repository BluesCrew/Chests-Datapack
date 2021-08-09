#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
execute if entity @s[tag=LinkedChest] if entity @a[distance=..4] run function chest:compare_chest
execute if entity @s[tag=LinkedChest] if block ~ ~-1 ~ hopper[facing=down] run function chest:compare_chest
execute if entity @s[tag=LinkedChest] if block ~ ~1 ~ hopper[facing=down] run function chest:compare_chest
execute if entity @s[tag=LinkedChest] if block ~ ~ ~-1 hopper[facing=south] run function chest:compare_chest
execute if entity @s[tag=LinkedChest] if block ~ ~ ~1 hopper[facing=north] run function chest:compare_chest
execute if entity @s[tag=LinkedChest] if block ~-1 ~ ~ hopper[facing=east] run function chest:compare_chest
execute if entity @s[tag=LinkedChest] if block ~1 ~ ~ hopper[facing=west] run function chest:compare_chest
#-------SPAWN AND DESPAWN VILLAGERS--------#
execute if entity @s[tag=PlayerInDistance] unless entity @a[distance=..20] run function chest:chests/linked_chest/player_leave
execute if entity @s[tag=!PlayerInDistance] if entity @a[distance=..20] run function chest:chests/linked_chest/player_come
#------------------------------------------#