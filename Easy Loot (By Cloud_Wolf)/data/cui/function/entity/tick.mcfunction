# detect if there was a change in the UI
data modify storage cui temp set from entity @s data.page.render.Items
execute store result score #bool cui run data modify storage cui temp set from block ~ ~ ~ Items
execute if score #bool cui matches 1 run function cui:page/on_change/start

execute at @s unless block ~ ~ ~ barrel run function cui:entity/delete