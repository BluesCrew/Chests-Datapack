execute if entity @e[type=item,distance=0.1..1,nbt={OnGround:1b,Item:{id:"minecraft:ender_pearl",Count:1b}}] run function chest:crafts/linked_chest
execute if entity @e[type=item,distance=0.1..1,nbt={OnGround:1b,Item:{id:"minecraft:vine",Count:16b}}] run function chest:crafts/camouflaged_chest
execute if entity @e[type=item,distance=0.1..1,nbt={OnGround:1b,Item:{id:"minecraft:rotten_flesh",Count:1b}}] run function chest:crafts/mimic_chest
say check