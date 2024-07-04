# tellraw @a {"nbt":"on_change.on_click[-1].list_scroll","storage":"cui"}

execute store result score in cui run data get storage cui on_change.on_click[-1].list_scroll.offset
function cui:page/on_change/on_click/list_scroll/set_offset with storage cui on_change.on_click[-1].list_scroll

# re-render the page 
data remove storage cui out
function cui:general/get_page with entity @s data.page
data modify storage cui render.in set from storage cui out
data modify storage cui render.in.list set from entity @s data.page.render.list
data modify storage cui render.in.memory set from entity @s data.page.memory
# tellraw @a {"nbt":"render.in","storage":"cui"}
function cui:page/render/start
data modify entity @s data.page.render set from storage cui render.out