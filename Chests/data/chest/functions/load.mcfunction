#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------OBJECTIVES----------------#
scoreboard objectives add Temp dummy
scoreboard objectives add Color dummy
scoreboard objectives add Color1 dummy
scoreboard objectives add Color2 dummy
scoreboard objectives add Color3 dummy
scoreboard objectives add CardinalRot dummy
scoreboard objectives add ChestButton dummy
scoreboard objectives add BreakChest minecraft.mined:minecraft.chest
execute in chest:chest_storage run function chest:chest_backup/init
#-----------------MESSAGE------------------#
tellraw @a ["",{"text":"Blue's Crew >","color":"dark_red"},{"text":" Chest+ Datapack has been reloaded."}]
#------------------------------------------#
