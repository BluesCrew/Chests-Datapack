#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
scoreboard players remove $MaxRC Temp 1
execute if score $MaxRC Temp matches 1.. if block ~ ~ ~ chest unless score @s C_PlayerID = @e[tag=MimicChest,distance=..0.9,limit=1] C_PlayerID run function chest:chests/mimic/stop_raycast
execute if score $MaxRC Temp matches 1.. unless block ~ ~ ~ chest positioned ^ ^ ^0.5 run function chest:chests/mimic/raycast
#------------------------------------------#
