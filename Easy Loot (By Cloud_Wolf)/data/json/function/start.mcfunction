scoreboard players set .process json 0
execute summon text_display run function json:make_string
data modify storage json parse.out set value ''
data remove storage json parse.char
execute store result score .len json run data get storage json parse.in
# tellraw @a {"nbt":"parse.in","storage":"json"}
function json:loop