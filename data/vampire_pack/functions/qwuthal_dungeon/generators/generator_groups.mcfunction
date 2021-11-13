## Corridor ##
execute as @e[type=armor_stand,tag=CorridorCenter] at @s positioned ^ ^ ^3 as @e[predicate=vampire_pack:qwuthal_dungeon/corridor/corridor_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/structure_generate

## Corner ##
execute as @e[type=armor_stand,tag=CornerCenter] at @s positioned ^ ^ ^3 as @e[predicate=vampire_pack:qwuthal_dungeon/corner/corner_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/structure_generate

## 4Ways ##
execute as @e[type=armor_stand,tag=4WaysCenter] at @s positioned ^ ^ ^4 as @e[predicate=vampire_pack:qwuthal_dungeon/4ways/4ways_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/structure_generate

## Tree ##
execute as @e[type=armor_stand,tag=QwuthalTreeCenter] at @s positioned ^ ^ ^8 as @e[predicate=vampire_pack:qwuthal_dungeon/tree/tree_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/structure_generate