# Broken Temple
#> Center Stand
execute if entity @s[tag=v.bVampTemple] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=v.bVampTemple] positioned ~ ~0.5 ~ run function qwuthal:broken_temple/broken_center

# Sides
execute as @e[type=marker,tag=q.Side,limit=1,sort=random] at @s run function qwuthal:dungeon/fill_sides