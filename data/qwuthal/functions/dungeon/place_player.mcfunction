#> qwuthal:dungeon/place_player

tp @s @e[type=marker,tag=q.Start,limit=1,sort=nearest]
execute if entity @e[type=marker,tag=q.Start,distance=..2] run tag @s remove q.Teleport