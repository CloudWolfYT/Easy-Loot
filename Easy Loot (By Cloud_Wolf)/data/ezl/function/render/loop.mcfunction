data modify storage ezl:tables out.table.pools[0].entries append value {"type":"minecraft:item","name":"minecraft:air","weight":1,"functions":[{"function":"minecraft:set_components","components":{}}]}

data modify storage ezl:tables out.table.pools[0].entries[-1].name set from storage ezl:tables temp[-1].id
data modify storage ezl:tables out.table.pools[0].entries[-1].weight set from storage ezl:tables temp[-1].count
data modify storage ezl:tables out.table.pools[0].entries[-1].functions[0].components set from storage ezl:tables temp[-1].components

data remove storage ezl:tables temp[-1]
scoreboard players remove #loop ezl 1
execute if score #loop ezl matches 1.. run function ezl:render/loop