# If the list source is the same as the previous, just assume its the next item in the list
data remove storage cui args
data modify storage cui args.source1 set from storage cui render.in.list.source
data modify storage cui args.idx1 set from storage cui render.in.list.idx

execute store result score #bool cui run data modify storage cui render.list.source set from storage cui render.in.Items[0].display.list.source
execute if score #bool cui matches 1 run function cui:page/render/list_of_list/new_list

# account for offset and get item at index
execute store result score #temp cui run data get storage cui render.in.Items[-1].display.list.offset
execute store result storage cui render.list.idx int 1 run scoreboard players operation #temp cui += .render-idx cui
data modify storage cui args merge from storage cui render.list
execute if score .render-idx cui <= .render-max cui run function cui:general/get_idx_of_idx with storage cui args
execute if score .render-idx cui = .render-max cui run data modify storage cui out.components."minecraft:custom_data".cui.empty set value 1b
execute if score .render-idx cui = .render-max cui run data modify storage cui out.components."minecraft:item_name" set value '➕'
execute if score .render-idx cui > .render-max cui run data modify storage cui out set value {id:"minecraft:black_stained_glass_pane",components:{"hide_tooltip":{},"minecraft:custom_data":{cui:{empty:1b}}}}

# load data onto item so we know what list item it is
data modify storage cui out.components."minecraft:custom_data".cui.list set from storage cui render.list

scoreboard players add .render-idx cui 1