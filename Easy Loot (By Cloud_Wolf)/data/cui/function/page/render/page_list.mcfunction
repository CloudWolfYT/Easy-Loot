data remove storage cui out
function cui:general/get_idx with storage cui render.out.list
data remove storage cui out.Slot
# load data onto item so we know what list item it is
data modify storage cui out.components."minecraft:custom_data".cui.list set from storage cui render.out.list
function cui:page/render/list/set_lore with storage cui render.out.list
data modify storage cui render.out.Items[0] merge from storage cui out