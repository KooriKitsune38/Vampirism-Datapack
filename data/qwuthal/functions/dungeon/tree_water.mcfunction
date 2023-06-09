#> qwuthal:dungeon/tree_water

execute if entity @s[predicate=qwuthal:player/is.vampire] run function qwuthal:dungeon/tree_water_buffs

execute unless entity @s[predicate=qwuthal:player/is.vampire] run function qwuthal:dungeon/tree_water_nerfs