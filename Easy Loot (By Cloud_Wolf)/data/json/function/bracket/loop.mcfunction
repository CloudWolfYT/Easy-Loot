# Places {"
data modify storage json parse.append set string storage json parse.in 0 1
data modify storage json temp set value ':'
execute store result score .: json run data modify storage json temp set string storage json parse.append 0 1

execute if score .: json matches 0 run data modify storage json parse.append set value '"'
function json:append with storage json parse
execute if score .: json matches 0 run data modify storage json parse.append set string storage json parse.in 0 1
execute if score .: json matches 0 run function json:append with storage json parse
data modify storage json parse.in set string storage json parse.in 1

scoreboard players remove .len json 1

execute if score .: json matches 1 run function json:bracket/loop