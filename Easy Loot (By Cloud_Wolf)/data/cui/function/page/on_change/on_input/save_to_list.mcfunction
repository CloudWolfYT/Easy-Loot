# data remove storage cui in[-1].Slot
# $data modify $(source)[$(idx)] merge from storage cui in[-1]
$execute unless data $(source)[$(idx)] run data modify $(source) append from storage cui in[-1]
$data modify storage cui in[-1].Slot set from $(source)[$(idx)].Slot
$data modify $(source)[$(idx)] merge from storage cui in[-1]

data remove storage cui out
function cui:general/get_page with entity @s data.page
data modify storage cui render.in set from storage cui out
data modify storage cui render.in.list set from entity @s data.page.render.list
function cui:page/render/start
data modify entity @s data.page.render set from storage cui render.out