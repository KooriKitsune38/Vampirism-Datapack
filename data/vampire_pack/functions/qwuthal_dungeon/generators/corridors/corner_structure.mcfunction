## South ##
execute as @s[y_rotation=-5..5,] run setblock ^ ^ ^-1 structure_block[mode=load]{name:"minecraft:qwuthal_corner",rotation:"CLOCKWISE_90",posX:3,posY:-1,posZ:-5,mirror:"NONE",mode:"LOAD",ignoreEntities:0b,}

## West ##
execute as @s[y_rotation=85..95,] run setblock ^ ^ ^-1 structure_block[mode=load]{name:"minecraft:qwuthal_corner",rotation:"CLOCKWISE_180",posX:5,posY:-1,posZ:3,mirror:"NONE",mode:"LOAD",ignoreEntities:0b,}

## North ##
execute as @s[y_rotation=175..-175] run setblock ^ ^ ^-1 structure_block[mode=load]{name:"minecraft:qwuthal_corner",rotation:"COUNTERCLOCKWISE_90",posX:-3,posY:-1,posZ:5,mirror:"NONE",mode:"LOAD",ignoreEntities:0b,}

## East ##
execute as @s[y_rotation=-95..-85] run setblock ^ ^ ^-1 structure_block[mode=load]{name:"minecraft:qwuthal_corner",rotation:"NONE",posX:-5,posY:-1,posZ:-3,mirror:"NONE",mode:"LOAD",ignoreEntities:0b,}

setblock ^ ^1 ^-1 redstone_block

## Stuff ##
kill @e[type=armor_stand,predicate=vampire_pack:qwuthal_dungeon/all_sides,distance=..2]
scoreboard players add room_count qwuthalrooms 1