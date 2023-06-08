#> qwuthal:dungeon/fill_sides

tag @s add .temp
execute unless entity @e[type=marker,tag=q.Side,tag=!.temp,distance=..2] run fill ^1 ^ ^ ^-1 ^2 ^ polished_blackstone_bricks
execute unless entity @e[type=marker,tag=q.Side,tag=!.temp,distance=..2] run setblock ~ ~1 ~ sea_lantern
tag @s remove .temp

kill @e[type=marker,distance=..2,tag=q.Side]
