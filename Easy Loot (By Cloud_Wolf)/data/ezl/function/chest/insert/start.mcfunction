data modify storage ezl:temp temp set value [{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]

data modify storage ezl:temp in set from storage ezl:temp out
execute store result score #loop ezl run data get storage ezl:temp out
data remove storage ezl:temp out
execute if score #loop ezl matches 1.. run function ezl:chest/insert/loop

data modify block ~ ~ ~ Items insert -1 from storage ezl:temp out[]