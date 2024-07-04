data modify storage ezl:tables out.table set value {"pools":[{"rolls":1,"entries":[]}]}
$data modify storage ezl:tables temp set from storage ezl:tables list[$(idx)].Items
execute store result score #loop ezl run data get storage ezl:tables temp
execute if score #loop ezl matches 1.. run function ezl:render/loop
$data modify storage ezl:tables list[$(idx)].table set from storage ezl:tables out.table