# GET TABLE
data remove storage ezl:tables out.table
$data modify storage ezl:tables out.table set from storage ezl:tables list[$(idx)].table

# PARSE JSON
data modify storage json in set from storage ezl:tables out.table
function json:start

# STRINGIFY
# tellraw @a {"storage":"json","nbt":"parse.out"}
data modify entity @s text set value '{"storage":"json","nbt":"parse.out"}'
data modify storage ezl:tables out.escaped_loot_table set string entity @s text 1 -1
# tellraw @a {"nbt":"out.escaped_loot_table","storage":"ezl:tables"}

function ezl:general/export1 with storage ezl:tables out

kill @s
