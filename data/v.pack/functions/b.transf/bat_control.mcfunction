#> v.pack:b.transf/bat_control

# Tp bat
execute at @s as @e[type=bat,tag=.batTemp,limit=1,sort=nearest] positioned ~ ~.5 ~ run tp @s ^ ^ ^ ~ ~

# Effects
execute if predicate v.pack:player/is_sneaking run function v.pack:b.transf/bat.sneaking
execute unless predicate v.pack:player/is_sneaking run scoreboard players reset @s batCancel
effect clear @s[predicate=!v.pack:player/is_sneaking] levitation

# Effects
effect give @s invisibility 1 0 true
effect give @s slow_falling 1 0 true
effect give @s[x_rotation=-90..-1] levitation 1 1 true
effect clear @s[predicate=!v.pack:player/is_sneaking,x_rotation=0..90] levitation