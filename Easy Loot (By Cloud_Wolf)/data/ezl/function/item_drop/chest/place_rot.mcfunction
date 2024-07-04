# If movement vectors are zero, use rotation
execute if entity @s[y_rotation=135..-135] run setblock ~ ~ ~ chest[facing=north]{LootTable:"ezl:fill_chest"}
execute if entity @s[y_rotation=-45..45] run setblock ~ ~ ~ chest[facing=south]{LootTable:"ezl:fill_chest"}
execute if entity @s[y_rotation=45..135] run setblock ~ ~ ~ chest[facing=west]{LootTable:"ezl:fill_chest"}
execute if entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ chest[facing=east]{LootTable:"ezl:fill_chest"}