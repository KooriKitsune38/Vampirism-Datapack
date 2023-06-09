#> qwuthal:dungeon/tree_room

execute as @a[distance=..10] at @s if block ~ ~ ~ #qwuthal:tree_water[waterlogged=true] run function qwuthal:dungeon/tree_water

particle spore_blossom_air ~ ~1 ~ 4 4 4 0 50