scoreboard players set @s Color1 0
scoreboard players set @s Color2 0
scoreboard players set @s Color3 0
tag @s remove NewChest
execute in chest:chest_storage run function chest:chest_backup/check
execute at @s run data modify block ~ ~ ~ Items set from storage chest:compare Storage
function chest:chests/linked_chest/check_link
