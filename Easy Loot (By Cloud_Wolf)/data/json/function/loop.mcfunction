data modify storage json parse.append set string storage json parse.in 0 3

data modify storage json temp set value '{'
execute store result score .0{ json run data modify storage json temp set string storage json parse.append 0 1
data modify storage json temp set value ','
execute store result score .0, json run data modify storage json temp set string storage json parse.append 0 1

data modify storage json temp set value '}'
execute store result score .1} json run data modify storage json temp set string storage json parse.append 1 2
data modify storage json temp set value '"'
execute store result score .1" json run data modify storage json temp set string storage json parse.append 1 2
data modify storage json temp set value '{'
execute store result score .1{ json run data modify storage json temp set string storage json parse.append 1 2
	data modify storage json temp set value '['
execute store result score .1[ json run data modify storage json temp set string storage json parse.append 1 2

data modify storage json temp set value '"'
execute store result score .2" json run data modify storage json temp set string storage json parse.append 2 3

execute if score .0{ json matches 0 if score .1" json matches 1 if score .1} json matches 1 if score .1{ json matches 1 if score .1[ json matches 1 if score .2" json matches 1 run function json:bracket/start
execute if score .0, json matches 0 if score .1" json matches 1 if score .1} json matches 1 if score .1{ json matches 1 if score .1[ json matches 1 if score .2" json matches 1 run function json:bracket/start

execute if score .process json matches 0 run function json:advance
scoreboard players set .process json 0

# execute store result score .len json run data get storage json parse.in
execute if score .len json matches ..3 run function json:end
execute if score .len json matches 4.. run function json:loop
