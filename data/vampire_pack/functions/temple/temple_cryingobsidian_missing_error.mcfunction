tellraw @s [{"text":"You don't have enough ","color":"dark_red"},{"text":"Crying Obsidian","color":"gold","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Total = 4","color":"gold"}]}},{"text":" more","color":"dark_red"},{"text":" to proceed.","color":"dark_red"}]

particle minecraft:enchant ~ ~0.1 ~ 0.3 0.2 0.3 0 15 normal

playsound minecraft:entity.bat.hurt master @s ~ ~ ~ 0.1 2

tag @s add TempleErrorDisplayed