#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
scoreboard players set $MaxRC Temp 0
execute as @a[tag=Clicking] run data modify storage chest:wool Item set from entity @s SelectedItem
function chest:wool_click/modify_wool
execute as @a[tag=Clicking,gamemode=!creative,gamemode=!spectator] run item modify entity @s weapon.mainhand chest:remove_count
#------------------------------------------#
