# Load your UI
function cui:general/get_ui with entity @s data
data modify storage cui ui set from storage cui out

scoreboard players set .has_input cui 0
scoreboard players set .has_click cui 0

function cui:page/on_change/check_input
execute if score .has_input cui matches 0 run function cui:page/on_change/check_click

clear @a *[minecraft:custom_data~{cui:{}}]

data modify block ~ ~ ~ Items set from entity @s data.page.render.Items