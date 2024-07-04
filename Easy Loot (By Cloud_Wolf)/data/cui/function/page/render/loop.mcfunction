# Reformat data
data modify storage cui render.out.Items prepend from storage cui render.in.Items[0].display
data modify storage cui render.out.Items[0] merge value {count:1,components:{"minecraft:custom_data":{cui:{}}}}
data modify storage cui render.out.Items[0].components."minecraft:custom_data".cui merge from storage cui render.in.Items[0].cui

# Load Display from special storage
data remove storage cui out
execute if data storage cui render.in.Items[0].display.ref run function cui:general/get_ref with storage cui render.in.Items[0].display
data remove storage cui out.Slot
data modify storage cui render.out.Items[0] merge from storage cui out

# Load Display from index of array
data remove storage cui out
execute if data storage cui render.in.Items[0].display.idx run function cui:general/get_idx with storage cui render.out.list
data remove storage cui out.Slot
data modify storage cui render.out.Items[0] merge from storage cui out

# Load Display from page's list
execute if data storage cui render.in.Items[0].display.page_list run function cui:page/render/page_list

# Process a list item
data remove storage cui out
execute if data storage cui render.in.Items[0].display.list unless data storage cui render.in.list run function cui:page/render/list/start
execute if data storage cui render.in.Items[0].display.list if data storage cui render.in.list run function cui:page/render/list_of_list/start
data remove storage cui out.Slot
data modify storage cui render.out.Items[0] merge from storage cui out

# tellraw @a {"nbt":"render.out.Items[0]","storage":"cui"}

# LOOPER
data remove storage cui render.in.Items[0]
scoreboard players remove #loop cui 1
execute if score #loop cui matches 1.. run function cui:page/render/loop