# detect items being put into the UI
data modify storage cui in set from storage cui temp
data remove storage cui in[{components:{"minecraft:custom_data":{cui:{}}}}]
execute if data storage cui in[0] run function cui:page/on_change/on_input/start