scoreboard players set .render-idx cui 0
data modify storage cui args merge from storage cui render.list

# tellraw @a {"nbt":"render.in.memory","storage":"cui"}
function cui:page/render/list_of_list/get_max with storage cui args
function cui:page/render/list_of_list/get_offset with storage cui args

scoreboard players operation .render-idx cui += .render-offset cui