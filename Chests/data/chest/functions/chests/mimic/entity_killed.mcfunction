#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
setblock ~ 255 ~ minecraft:shulker_box
data modify block ~ 255 ~ Items set from entity @s data.Items
loot spawn ~ ~ ~ mine ~ 255 ~ stick{drop_contents:true}
execute as @e[tag=MimicChest] at @s unless block ~ ~ ~ chest run kill @s
kill @s
#------------------------------------------#
