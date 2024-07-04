function ezl:general/get_table with storage ezl:temp in[-1]

data modify storage ezl:tables out.table.pools[0].rolls set from storage ezl:temp in[-1].count
data remove block 0 -64 0 Items
function ezl:chest/replace with storage ezl:tables out

data modify storage ezl:temp out append from block 0 -64 0 Items[]

data remove storage ezl:temp in[-1]
scoreboard players remove #loop ezl 1
execute if score #loop ezl matches 1.. run function ezl:chest/loop