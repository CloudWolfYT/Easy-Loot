# Using the insert trick to overwrite slots which have been changed.
data modify storage cui temp set from entity @s data.page.render.Items
data modify storage cui temp[].components."minecraft:custom_data" merge value {source:1b}
data modify block ~ ~ ~ Items insert 0 from storage cui temp[]
data remove storage cui temp
data modify storage cui temp append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{source:1b}}}]
data remove storage cui in
data modify storage cui in append from storage cui temp[{components:{"minecraft:custom_data":{cui:{on_click:[{}]}}}}]

# bandage to prevent blank spots from clicking
execute if data storage cui in[0].components."minecraft:custom_data".cui.empty run data remove storage cui in[0]
execute if data storage cui in[0] unless data storage cui in[1] run function cui:page/on_change/on_click/start