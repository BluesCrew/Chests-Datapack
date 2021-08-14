#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
summon marker ~ ~0.33 ~ {Tags:["NewChest","Chest","MimicChest"]}
execute if block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run setblock ~ ~1 ~ chest[facing=south]
execute if block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run setblock ~ ~1 ~ chest[facing=west]
execute if block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run setblock ~ ~1 ~ chest[facing=north]
execute if block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run setblock ~ ~1 ~ chest[facing=east]
execute unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=1}] run setblock ~ ~ ~ chest[facing=south]
execute unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=2}] run setblock ~ ~ ~ chest[facing=west]
execute unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=3}] run setblock ~ ~ ~ chest[facing=north]
execute unless block ~ ~ ~ #chest:not_full if entity @a[tag=PlacingChest,scores={CardinalRot=4}] run setblock ~ ~ ~ chest[facing=east]
#-----------------INITIATE-----------------#
scoreboard players operation @e[tag=NewChest] C_PlayerID = @a[tag=PlacingChest] C_PlayerID
#----------------PLAY SOUND----------------#
execute as @a[tag=PlacingChest] at @s run playsound block.wood.place block @s ~ ~ ~ 1 0.8 1
#-----------------MESSAGE------------------#
tellraw @a[tag=PlacingChest] ["",{"text":"Chest+ >","color":"dark_red"},{"text":" You successfuly placed a mimic chest."}]
#------------------------------------------#
