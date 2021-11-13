## Particles ##
particle crimson_spore ~ ~3 ~ 4 4 4 1 5 normal

## Blood level drain ##
scoreboard players add @a[distance=..4,predicate=vampire_pack:player/tag_vampire] bloodtimer 10
execute as @a[distance=..4,predicate=vampire_pack:chance_05,predicate=vampire_pack:player/tag_vampire] at @s anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust crimson_hyphae ^ ^ ^0.25 0.1 0.05 0.1 1 5 normal 

## Effects ##
effect give @a[distance=..5,nbt=!{ActiveEffects:[{Id:20b, Amplifier:0b}]}] wither 1 1 true

execute as @a[distance=..9,predicate=vampire_pack:player/tag_vampire] at @s unless block ~ ~ ~ #minecraft:slabs if block ~ ~ ~ #minecraft:stairs[waterlogged=true] run scoreboard players add @s treebltimer 1
execute as @a[distance=..9,predicate=vampire_pack:player/tag_vampire] at @s unless block ~ ~ ~ #minecraft:stairs if block ~ ~ ~ #minecraft:slabs[waterlogged=true] run scoreboard players add @s treebltimer 1
execute as @a[scores={treebltimer=40..}] at @s run function vampire_pack:qwuthal_dungeon/room_effects/tree_room/bl_add1

execute as @a[distance=..9,predicate=vampire_pack:player/tag_vampire] at @s unless block ~ ~ ~ #minecraft:slabs[waterlogged=true] unless block ~ ~ ~ #minecraft:stairs[waterlogged=true] run scoreboard players reset @s treebltimer