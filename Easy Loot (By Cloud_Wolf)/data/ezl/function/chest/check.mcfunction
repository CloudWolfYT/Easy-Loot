execute unless block ~ ~ ~ chest run function ezl:chest/drop
execute if entity @s[tag=ezl.check] if block ~ ~ ~ chest unless data block ~ ~ ~ LootTable run function ezl:chest/run
tag @s remove ezl.check