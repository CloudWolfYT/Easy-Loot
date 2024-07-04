data remove storage cui in[0].components."minecraft:custom_data".cui
data remove storage cui in[0].components."minecraft:custom_data".source
execute store result score #bool cui run data get storage cui in[0].components."minecraft:custom_data"
execute if score #bool cui matches 0 run data remove storage cui in[0].components."minecraft:custom_data"
function cui:page/on_change/on_input/return