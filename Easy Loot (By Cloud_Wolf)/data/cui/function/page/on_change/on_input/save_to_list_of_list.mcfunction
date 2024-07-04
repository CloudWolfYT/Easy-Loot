data remove storage cui args
data modify storage cui args set from storage cui out.components."minecraft:custom_data".cui.list
data modify storage cui args.source1 set from entity @s data.page.render.list.source
data modify storage cui args.idx1 set from entity @s data.page.render.list.idx

function cui:page/on_change/on_input/save_to_list_of_list1 with storage cui args

# BANDAID FOR EZLOOT
data modify storage cui args.idx set from storage cui args.idx1
function ezl:render/start with storage cui args