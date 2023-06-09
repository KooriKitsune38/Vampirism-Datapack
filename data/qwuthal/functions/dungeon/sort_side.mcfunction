#> qwuthal:dungeon/sort_side

tag @s add .temp
execute unless entity @e[type=marker,tag=q.Side,tag=!.temp,distance=..2] run function qwuthal:dungeon/fill_side
tag @s remove .temp

execute unless entity @s[tag=q.ClosedSide] if predicate qwuthal:chance_20 run function qwuthal:dungeon/spawn_gate

kill @e[type=marker,distance=..2,tag=q.Side]
