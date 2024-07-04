# tellraw @a {"storage":"cui","nbt":"in[0].components.\"minecraft:custom_data\".cui.list"}
execute unless data entity @s data.page.render.list run function cui:page/on_change/on_click/delete/list with storage cui in[0].components."minecraft:custom_data".cui.list
execute if data entity @s data.page.render.list run function cui:page/on_change/on_click/delete/list_of_list

execute unless data storage cui in[0].components."minecraft:custom_data".cui.empty run function cui:page/on_change/on_click/delete/return

# BANDAID FOR EZLOOT
function ezl:render/start with entity @s data.page.render.list

# refresh page
data remove storage cui out
function cui:general/get_page with entity @s data.page
data modify storage cui render.in set from storage cui out
data modify storage cui render.in.list set from entity @s data.page.render.list
function cui:page/render/start
data modify entity @s data.page.render set from storage cui render.out