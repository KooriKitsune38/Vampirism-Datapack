tellraw @s [{"text":"You don't have enough ","color":"#6f0000"},{"text":"Crying Obsidian","color":"#bf3535","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Total = 4","color":"#bf3535"}]}},{"text":" more","color":"#bf3535"},{"text":" to proceed.","color":"#6f0000"}]

particle minecraft:enchant ~ ~0.1 ~ 0.3 0.2 0.3 0 15 normal

playsound minecraft:entity.enderman.hurt master @s ~ ~ ~ 0.1 2

tag @s add t.errorDisp