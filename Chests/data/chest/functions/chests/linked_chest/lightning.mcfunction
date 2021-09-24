kill @e[type=minecraft:lightning_bolt,distance=..7,sort=nearest,limit=1]
execute as @e[type=minecraft:witch,distance=..0.8,nbt={NoAI:1b}] run tp @s ~ ~-300 ~
function chest:chests/linked_chest/respawn_villagers