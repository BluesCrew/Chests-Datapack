#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#-------------------TICK-------------------#
execute as @e[scores={BreakChest=1..}] run function chest:chest_destroy
execute as @e[tag=Chest] at @s run function chest:chest_main
#------------------------------------------#
