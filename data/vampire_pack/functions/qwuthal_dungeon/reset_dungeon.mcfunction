## Reset and kill the current ##
scoreboard players set #reset_timer qwuthalreset 24000
execute in vampire_pack:qwuthal_dimension at @e[tag=QwuthalCenter] run fill ~-10 ~-3 ~-10 ~10 ~15 ~10 air
execute in vampire_pack:qwuthal_dimension run kill @e[tag=QwuthalCenter]
execute in vampire_pack:qwuthal_dimension run kill @e[tag=QwuthalChests]

scoreboard players reset room_count qwuthalrooms

## Create another dungeon ##
execute in vampire_pack:qwuthal_dimension run setblock 0 149 0 structure_block[mode=load]{name:"minecraft:qwuthal_dungeon_4ways",rotation:"NONE",posX:-4,posY:0,posZ:-4,mirror:"NONE",mode:"LOAD",ignoreEntities:0b}
execute in vampire_pack:qwuthal_dimension run setblock 0 148 0 redstone_block

## TP players ##
execute as @a[predicate=vampire_pack:world/in_qwuthal] in vampire_pack:qwuthal_dimension run tp @s 0 150 0

playsound entity.blaze.death ambient @a 0 150 0 1 0.1

execute in vampire_pack:qwuthal_dimension positioned 0 150 0 as @a[distance=..5] run effect give @s blindness 5 0 true
