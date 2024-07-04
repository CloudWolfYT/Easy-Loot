$execute store result score #temp cui run data get entity @s data.page.memory.lists[{source:"$(source)"}].offset
$execute unless data entity @s data.page.memory.lists[{source:"$(source)"}] run data modify entity @s data.page.memory.lists append from storage cui on_change.on_click[-1].list_scroll
execute unless data entity @s data.page.render.list run function cui:page/on_change/on_click/list_scroll/get_max with storage cui on_change.on_click[-1].list_scroll
execute if data entity @s data.page.render.list run function cui:page/on_change/on_click/list_scroll/get_max_of_list
scoreboard players operation #temp cui += in cui
execute if score #temp cui > .render-max cui run scoreboard players operation #temp cui -= in cui
execute if score #temp cui matches ..-1 run scoreboard players set #temp cui 0
$execute store result entity @s data.page.memory.lists[{source:"$(source)"}].offset int 1 run scoreboard players get #temp cui