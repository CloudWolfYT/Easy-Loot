data remove storage cui args
data modify storage cui args set from storage cui on_change.on_click[-1].list_scroll
data modify storage cui args.source1 set from entity @s data.page.render.list.source
data modify storage cui args.idx1 set from entity @s data.page.render.list.idx
function cui:page/on_change/on_click/list_scroll/get_max_of_list1 with storage cui args