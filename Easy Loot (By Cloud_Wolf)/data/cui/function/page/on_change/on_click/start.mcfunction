data modify storage cui render.in.list set from entity @s data.page.render.list
scoreboard players set .has_click cui 1
data modify storage cui on_change.on_click set from storage cui in[0].components."minecraft:custom_data".cui.on_click
# tellraw @a {"nbt":"on_change.on_click","storage":"cui"}
function cui:page/on_change/on_click/loop