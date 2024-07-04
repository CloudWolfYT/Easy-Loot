# tellraw @a {"storage":"cui","nbt":"in"}
data remove block 0 -64 0 Items
data modify block 0 -64 0 Items append from storage cui in[-1]
loot give @p mine 0 -64 0 stick[minecraft:custom_data={drop_contents:1b}]