#> v.pack:temple/t.particles/part4

# Part4
tp @s[tag=v.templePart4] ~ ~ ~ ~25 ~
execute if entity @s[tag=v.templePart4] run particle falling_dust purple_glazed_terracotta ^2 ^ ^ 0.1 0.05 0.1 1 3 force

# Part4b
tp @s[tag=v.templePart4b] ~ ~ ~ ~-5 ~
execute if entity @s[tag=v.templePart4b] run particle dust 0.337 0.008 0.588 2 ^3.5 ^ ^0.5 0.2 0.2 0.2 100 10 normal
execute if entity @s[tag=v.templePart4b] run particle soul ^3.5 ^ ^ 0.2 0.3 0.2 0 1 normal

# Up and down
execute positioned ~ ~-4.5 ~ if entity @e[type=villager,distance=..1,tag=v.Anchor] run function v.pack:temple/particles_down
execute positioned ~ ~2 ~ if entity @e[type=villager,distance=..1,tag=v.Anchor] run function v.pack:temple/particles_up

#> Tp
execute if entity @s[tag=ParticlesDown] run tp @s ~ ~-.1 ~
execute if entity @s[tag=ParticlesUp] run tp @s ~ ~.1 ~