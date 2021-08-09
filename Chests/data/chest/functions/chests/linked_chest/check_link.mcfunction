#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------------DETECT BREAKING-------------#
tag @s add This
tag @s remove HasLink
execute as @e[tag=LinkedChest,tag=!This] if score @s Color1 = @e[tag=LinkedChest,sort=nearest,limit=1] Color1 if score @s Color2 = @e[tag=LinkedChest,sort=nearest,limit=1] Color2 if score @s Color3 = @e[tag=LinkedChest,sort=nearest,limit=1] Color3 at @s run tag @s add Linked
execute if entity @e[tag=Linked] run tag @s add HasLink
tag @e remove Linked
tag @s remove This
#------------------------------------------#
