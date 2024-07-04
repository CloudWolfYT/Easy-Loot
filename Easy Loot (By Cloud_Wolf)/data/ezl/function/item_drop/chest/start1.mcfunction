execute store result score .x ezl run data get entity @s Pos[0] 1000.0
execute store result score #temp ezl run data get entity @s Item.components."minecraft:custom_data".ezl_data.Pos[0] 1000.0
scoreboard players operation .x ezl -= #temp ezl

execute store result score .z ezl run data get entity @s Pos[2] 1000.0
execute store result score #temp ezl run data get entity @s Item.components."minecraft:custom_data".ezl_data.Pos[2] 1000.0
scoreboard players operation .z ezl -= #temp ezl

function ezl:item_drop/chest/place_vec
execute if score .x ezl matches 0 if score .z ezl matches 0 run function ezl:item_drop/chest/place_rot

data modify storage ezl:temp in set from entity @s Item.components."minecraft:custom_data".ezl

execute summon marker run function ezl:item_drop/chest/spawn

kill @s