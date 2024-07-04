data modify storage cui on_change.on_click[-1].ref set from storage cui on_change.on_click[-1].goto
data remove storage cui out
function cui:general/get_page with storage cui on_change.on_click[-1]
data modify storage cui render.in set from storage cui out

# tellraw @a {"nbt":"in[0].components.\"minecraft:custom_data\".cui.list","storage":"cui"}

data modify storage cui render.in.list set from storage cui in[0].components."minecraft:custom_data".cui.list
function cui:page/render/start

data modify entity @s data.page.ref set from storage cui on_change.on_click[-1].ref
data modify entity @s data.page.render set from storage cui render.out