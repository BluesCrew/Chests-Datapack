#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
playsound block.chest.open hostile @a[distance=..20] ~ ~ ~ 0.1 2 1
execute at @p run summon minecraft:evoker_fangs ~ ~ ~ 
particle block minecraft:redstone_block ~ ~ ~ 0.6 0.6 0.6 0.1 10 normal
#------------------------------------------#
