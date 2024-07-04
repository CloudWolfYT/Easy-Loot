# Converts stored data into displayable data
# cui render.in  -> input page to render
# cui render.out -> rendered page

# DEBUGGING
# data modify storage cui render.in set from storage cui uis[0].pages[0]

# reset list elements
data remove storage cui render.list

data modify storage cui render.out set from storage cui render.in
data remove storage cui render.out.Items
data remove storage cui render.out.memory

execute store result score #loop cui run data get storage cui render.in.Items
execute if score #loop cui matches 1.. run function cui:page/render/loop

# tellraw @a {"storage":"cui","nbt":"render.out"}

data modify block 0 -64 0 Items set from storage cui render.out.Items
data modify storage cui render.out.Items set from block 0 -64 0 Items