#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DETECT BREAKING-------------#
data modify storage chest:compare Chest set from block ~ ~ ~ Items
execute if entity @s[tag=LinkedChest] run function chest:chest_backup/check
execute store success score $ChestCompare Temp run data modify storage chest:compare Storage set from storage chest:compare Chest
execute if score $ChestCompare Temp matches 1 run function chest:chest_changed
#------------------------------------------#
