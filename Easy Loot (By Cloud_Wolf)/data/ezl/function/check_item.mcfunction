execute if data entity @s[nbt={Item:{id:"minecraft:decorated_pot"}}] Item.components."minecraft:custom_data".ezl run function ezl:item_drop/spawn/start
execute if data entity @s[nbt={Item:{id:"minecraft:chest"},OnGround:1b}] Item.components."minecraft:custom_data".ezl at @s positioned ~ ~ ~ run function ezl:item_drop/chest/start
execute if data entity @s[nbt={Item:{id:"minecraft:chest"}}] Item.components."minecraft:custom_data".ezl run data modify entity @s Item.components."minecraft:custom_data".ezl_data.Pos set from entity @s Pos
execute unless data entity @s Item.components."minecraft:custom_data".ezl run tag @s add ezl_test