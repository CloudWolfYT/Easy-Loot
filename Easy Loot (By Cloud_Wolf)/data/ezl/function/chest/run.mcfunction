data modify storage ezl:temp in set from entity @s data.ezl

data remove storage ezl:temp out
execute store result score #loop ezl run data get storage ezl:temp in
execute if score #loop ezl matches 1.. at @s run function ezl:chest/loop

function ezl:chest/insert/start

kill @s