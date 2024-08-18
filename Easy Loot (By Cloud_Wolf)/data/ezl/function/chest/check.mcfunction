# for your own safety lol
execute if entity @s[tag=ezl.opened] unless block ~ ~ ~ chest unless block ~ ~ ~ barrel run kill @s

execute if entity @s[tag=!ezl.opened] unless block ~ ~ ~ chest unless block ~ ~ ~ barrel run function ezl:chest/drop
execute if entity @s[tag=!ezl.opened] if entity @s[tag=ezl.check] if block ~ ~ ~ chest unless data block ~ ~ ~ LootTable run function ezl:chest/run
execute if entity @s[tag=!ezl.opened] if entity @s[tag=ezl.check] if block ~ ~ ~ barrel unless data block ~ ~ ~ LootTable run function ezl:chest/run
tag @s remove ezl.check