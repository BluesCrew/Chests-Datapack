#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
scoreboard players remove $MaxRC Temp 1
execute if score $MaxRC Temp matches 1.. positioned ~ ~-0.28 ~ if score $ButtonCheckFor Temp matches 1 as @e[tag=ChestLinkColor1,distance=..0.7] run function chest:wool_click/raycast/stop_raycast
execute if score $MaxRC Temp matches 1.. positioned ~ ~-0.28 ~ if score $ButtonCheckFor Temp matches 2 as @e[tag=ChestLinkColor2,distance=..0.7] run function chest:wool_click/raycast/stop_raycast
execute if score $MaxRC Temp matches 1.. positioned ~ ~-0.28 ~ if score $ButtonCheckFor Temp matches 3 as @e[tag=ChestLinkColor3,distance=..0.7] run function chest:wool_click/raycast/stop_raycast
execute if score $MaxRC Temp matches 1.. positioned ^ ^ ^0.2 run function chest:wool_click/raycast/raycast
#------------------------------------------#
