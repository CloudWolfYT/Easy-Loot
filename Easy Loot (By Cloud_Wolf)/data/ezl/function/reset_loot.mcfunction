execute at @s run data remove block ~ ~ ~ Items
execute at @s run data modify block ~ ~ ~ LootTable set value "ezl:fill_chest"
tag @s remove ezl.opened