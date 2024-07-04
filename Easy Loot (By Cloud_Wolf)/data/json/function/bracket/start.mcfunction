# Places {"
scoreboard players set .process json 1

data modify storage json parse.append set string storage json parse.in 0 1
function json:append with storage json parse
data modify storage json parse.append set value '"'
function json:append with storage json parse

data modify storage json parse.in set string storage json parse.in 1
scoreboard players remove .len json 1

function json:bracket/loop