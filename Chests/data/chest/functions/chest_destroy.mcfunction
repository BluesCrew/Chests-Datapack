#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DESTROY CHEST---------------#
execute as @e[tag=ChestLinkColor] at @s unless block ~ ~ ~ chest run tp @s ~ ~-300 ~
function chest:break_list
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:chest"}}]
kill @s
#------------------------------------------#
