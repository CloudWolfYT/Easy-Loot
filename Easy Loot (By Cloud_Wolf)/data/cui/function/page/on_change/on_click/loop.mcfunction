execute if data storage cui on_change.on_click[-1].goto run function cui:page/on_change/on_click/goto
execute if data storage cui on_change.on_click[-1].list_scroll run function cui:page/on_change/on_click/list_scroll/start
execute if data storage cui on_change.on_click[-1].delete run function cui:page/on_change/on_click/delete/start
execute if data storage cui on_change.on_click[-1].run_cmd run function cui:page/on_change/on_click/run_cmd with storage cui on_change.on_click[-1]

data remove storage cui on_change.on_click[-1]
execute if data storage cui on_change.on_click[0] run function cui:page/on_change/on_click/loop