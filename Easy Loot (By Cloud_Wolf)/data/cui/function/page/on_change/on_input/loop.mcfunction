function cui:page/on_change/on_input/get_source with storage cui in[-1]

execute unless data storage cui out.components."minecraft:custom_data".cui.on_input run function cui:page/on_change/on_input/return
execute if data storage cui out.components."minecraft:custom_data".cui.on_input run function cui:page/on_change/on_input/run

data remove storage cui in[-1]
scoreboard players remove #loop cui 1
execute if score #loop cui matches 1.. run function cui:page/on_change/on_input/loop