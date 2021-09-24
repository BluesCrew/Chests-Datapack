#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
kill @e[type=item,nbt={Age:0s},distance=..2]
setblock ~ 255 ~ minecraft:shulker_box
data modify block ~ 255 ~ Items set from entity @s data.Items
loot spawn ~ ~ ~ mine ~ 255 ~ stick{drop_contents:true}
setblock ~ 255 ~ air
#------------------------------------------#