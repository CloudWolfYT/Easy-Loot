scoreboard players set .render-idx cui 0

# tellraw @a {"nbt":"render.in.memory","storage":"cui"}
function cui:page/render/list/get_max with storage cui render.list
function cui:page/render/list/get_offset with storage cui render.list

scoreboard players operation .render-idx cui += .render-offset cui