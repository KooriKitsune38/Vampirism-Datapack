## Close Corridors ##
execute as @e[type=armor_stand,tag=QwuthalCenter] at @s positioned ^ ^ ^3 as @e[predicate=vampire_pack:qwuthal_dungeon/all_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/close_wall

## Close 4Ways ##
execute as @e[type=armor_stand,tag=4WaysCenter] at @s positioned ^ ^ ^4 as @e[predicate=vampire_pack:qwuthal_dungeon/all_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/close_wall

## Close Tree Room ##
execute as @e[type=armor_stand,tag=QwuthalTreeCenter] at @s positioned ^ ^ ^8 as @e[predicate=vampire_pack:qwuthal_dungeon/all_sides,distance=..1,limit=1] at @s run function vampire_pack:qwuthal_dungeon/generators/close_wall