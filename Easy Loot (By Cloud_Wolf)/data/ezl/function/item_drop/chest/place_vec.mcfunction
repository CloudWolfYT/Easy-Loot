execute if score .z ezl > .x ezl if score .z ezl matches 1.. run setblock ~ ~ ~ chest[facing=north]{LootTable:"ezl:fill_chest"}
execute if score .z ezl > .x ezl if score .z ezl matches ..-1 run setblock ~ ~ ~ chest[facing=east]{LootTable:"ezl:fill_chest"}
execute if score .x ezl > .z ezl if score .x ezl matches 1.. run setblock ~ ~ ~ chest[facing=west]{LootTable:"ezl:fill_chest"}
execute if score .x ezl > .z ezl if score .z ezl matches ..-1 run setblock ~ ~ ~ chest[facing=south]{LootTable:"ezl:fill_chest"}