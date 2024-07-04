data remove storage cui args
data modify storage cui args.source1 set from entity @s data.page.render.list.source
data modify storage cui args.idx1 set from entity @s data.page.render.list.idx

data modify storage cui args merge from storage cui in[0].components."minecraft:custom_data".cui.list

function cui:page/on_change/on_click/delete/list_of_list1 with storage cui args