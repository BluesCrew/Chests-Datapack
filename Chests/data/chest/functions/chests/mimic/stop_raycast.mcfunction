#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#--------CHECK WHEN PLACER LEAVES----------#
summon minecraft:zombified_piglin ~ ~ ~ {DeathLootTable:"",Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:40},{Name:"minecraft:generic.knockback_resistance",Base:2}],Tags:["MimicEntity","NewMimicEntity"],IsBaby:1b,ActiveEffects:[{Id:14b,Amplifier:10b,ShowParticles:0b,ShowIcon:0b,Duration:999999},{Id:11b,Amplifier:0b,ShowParticles:0b,ShowIcon:0b,Duration:999999}],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}
execute as @e[tag=NewMimicEntity] store result score @s MimicID run scoreboard players add $Global MimicID 1
execute as @e[tag=NewMimicEntity] run data modify entity @s AngryAt set from entity @p UUID
execute as @e[tag=NewMimicEntity] run summon marker ~ ~ ~ {Tags:["MimicMarker","NewMimicMarker"]}
execute as @e[tag=NewMimicEntity] at @s run scoreboard players operation @e[tag=NewMimicMarker,sort=nearest,limit=1] MimicID = @s MimicID
execute as @e[tag=NewMimicMarker] at @s run data modify entity @s data.Items set from block ~ ~ ~ Items
tag @e remove NewMimicEntity
tag @e remove NewMimicMarker
setblock ~ ~ ~ air
#------------------------------------------#
