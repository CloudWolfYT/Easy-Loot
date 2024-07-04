# Load your UI
data remove storage cui out
function cui:general/get_ui with entity @s data
data modify storage cui ui set from storage cui out

data modify entity @s data.page.ref set from storage cui ui.home
data remove storage cui out
function cui:general/get_page with entity @s data.page
data modify storage cui render.in set from storage cui out
function cui:page/render/start
data modify entity @s data.page.render set from storage cui render.out

data modify block ~ ~ ~ Items set from entity @s data.page.render.Items