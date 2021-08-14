#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
tag @a remove Placer
execute at @s as @a if score @s C_PlayerID = @e[tag=Chest,sort=nearest,limit=1] C_PlayerID run tag @s add Placer
execute if entity @s[tag=PlayerInDistance] unless entity @a[tag=Placer,distance=..6] run function chest:chests/camouflaged_chest/player_leave
execute if entity @s[tag=!PlayerInDistance] if entity @a[tag=Placer,distance=..6] run function chest:chests/camouflaged_chest/player_come
#-------------------BREAK------------------#
execute if entity @s[tag=!PlayerInDistance] if block ~ ~ ~ air run function chest:chests/camouflaged_chest/drop_items
execute if block ~ ~ ~ air run function chest:chest_destroy
#------------------------------------------#
