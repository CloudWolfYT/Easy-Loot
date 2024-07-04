data modify storage ezl:temp in set from entity @s data.ezl

execute store result score #loop ezl run data get storage ezl:temp in
execute if score #loop ezl matches 1.. at @s run function ezl:item_drop/spawn/loop

kill @s