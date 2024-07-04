data modify entity @s text set value '{"storage":"json","nbt":"in"}'
data modify storage json parse.in set string entity @s text 1 -1
kill @s