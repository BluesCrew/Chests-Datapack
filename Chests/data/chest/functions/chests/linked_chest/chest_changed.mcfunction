#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DETECT BREAKING-------------#
tag @s add This
function chest:chest_backup/check
execute in chest:chest_storage at @e[tag=LinkStorageMover] run data modify block ~ ~ ~ Items set from storage chest:compare Chest
execute as @e[tag=LinkedChest,tag=!This] if score @s Color1 = @e[tag=LinkedChest,sort=nearest,limit=1] Color1 if score @s Color2 = @e[tag=LinkedChest,sort=nearest,limit=1] Color2 if score @s Color3 = @e[tag=LinkedChest,sort=nearest,limit=1] Color3 at @s run data modify block ~ ~ ~ Items set from storage chest:compare Chest
tag @s remove This
#------------------------------------------#
