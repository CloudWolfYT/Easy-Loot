execute store result score #temp ezl run data get storage ezl:temp temp
execute store result storage ezl:temp args.max int 1 run scoreboard players remove #temp ezl 1

data modify storage ezl:temp out append from storage ezl:temp in[-1]
function ezl:general/rng with storage ezl:temp args
function ezl:chest/insert/del with storage ezl:temp args

data remove storage ezl:temp in[-1]
scoreboard players remove #loop ezl 1
execute if score #loop ezl matches 1.. run function ezl:chest/insert/loop