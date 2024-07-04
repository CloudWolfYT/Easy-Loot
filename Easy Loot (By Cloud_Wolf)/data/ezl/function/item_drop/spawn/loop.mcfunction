function ezl:general/get_table with storage ezl:temp in[-1]

data modify storage ezl:tables out.table.pools[0].rolls set from storage ezl:temp in[-1].count
function ezl:item_drop/spawn/spawn with storage ezl:tables out

data remove storage ezl:temp in[-1]
scoreboard players remove #loop ezl 1
execute if score #loop ezl matches 1.. run function ezl:item_drop/spawn/loop