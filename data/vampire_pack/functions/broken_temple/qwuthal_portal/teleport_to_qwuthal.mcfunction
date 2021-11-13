execute in vampire_pack:qwuthal_dimension run tp 0 150 0
execute if entity @s[predicate=vampire_pack:world/in_qwuthal] at @s run setblock 0 149 0 structure_block[mode=load]{name:"minecraft:qwuthal_dungeon_4ways",rotation:"NONE",posX:-4,posY:0,posZ:-4,mirror:"NONE",mode:"LOAD",ignoreEntities:0b}
execute if entity @s[predicate=vampire_pack:world/in_qwuthal] at @s run setblock 0 148 0 redstone_block
scoreboard players reset @s qwuthaltptimer