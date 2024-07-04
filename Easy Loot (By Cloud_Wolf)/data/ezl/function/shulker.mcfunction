forceload add 0 0
setblock 0 -64 0 yellow_shulker_box

tellraw @a[gamemode=creative] ["",{"text":"E","color":"#70d1fa"},{"text":"Z","color":"#4ed7e0"},{"text":" L","color":"#5ad9b9"},{"text":"O","color":"#84d58e"},{"text":"O","color":"#b4cc6b"},{"text":"T","color":"#e3bd5f"},{"text":">","color":"white"},{"text":"No yellow shulker box at 0 -64 0 detected. We placed one there, is that ok?"}]