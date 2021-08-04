#==========================================#
#          Created by Blue's Crew          #
# Please don't claim this as your own work #
#     Youtube : Blue's Production Team     #
#==========================================#
#----------------PLACE CHEST---------------#
setblock ~ ~ ~ chest[facing=east]
execute rotated -90 0 run summon villager ^-0.3 ^ ^ {Age:-214762000,Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,ShowParticles:0b,Amplifier:2b,Duration:9999999}],Tags:["ChestLinkColor1","NewChestLinkColor","ChestLinkColor"],ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}
execute rotated -90 0 run summon villager ^ ^ ^ {Age:-214762000,Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,ShowParticles:0b,Amplifier:2b,Duration:9999999}],Tags:["ChestLinkColor2","NewChestLinkColor","ChestLinkColor"],ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}
execute rotated -90 0 run summon villager ^0.3 ^ ^ {Age:-214762000,Silent:1b,NoAI:1b,ActiveEffects:[{Id:14b,ShowParticles:0b,Amplifier:2b,Duration:9999999}],Tags:["ChestLinkColor3","NewChestLinkColor","ChestLinkColor"],ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}
execute as @e[tag=NewChestLinkColor] at @s rotated -90 0 run tp @s ~ ~ ~ ~ ~
#------------------------------------------#
