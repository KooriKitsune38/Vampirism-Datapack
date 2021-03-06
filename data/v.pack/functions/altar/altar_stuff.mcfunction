#> v.pack:altar/altar_stuff

# Buffs
effect give @a[distance=..7,predicate=!v.pack:player/is.vampire,predicate=!v.pack:player/regeneration] regeneration 2 1 true
execute as @a[distance=..7,predicate=!v.pack:player/is.vampire] at @s run particle dust 0.337 0.878 0.761 1 ~ ~ ~ 0.2 0.1 0.2 1 2 normal

# If daytime
execute if predicate v.pack:world/is_daytime run function v.pack:altar/daytime_effects

# Nerfs
effect give @a[distance=..1,predicate=v.pack:player/is.vampire] instant_damage 1 0 true
execute as @a[distance=..5,predicate=v.pack:player/is.vampire] at @s run particle dust 0.91 0.729 0.961 0.5 ~ ~1 ~ 0.2 0.5 0.2 1 1 force

# Particles
tp @s ~ ~ ~ ~10 ~
execute positioned ~ ~-0.3 ~ run particle dust 0.812 0.722 0.204 1.3 ^ ^ ^1.3 0.1 0.1 0.1 0 5 force
particle bubble ~ ~0.6 ~ 0.25 0.2 0.25 0 5 normal
execute if predicate v.pack:altar/light_requirement positioned ~ ~1.5 ~ run particle dust 0.945 0.871 0.529 0.7 ^ ^ ^-0.7 0 0 0 0 1 force
execute if predicate v.pack:altar/light_requirement run particle splash ~ ~1 ~ 0.2 0.2 0.2 0 3 force

# Removal
execute if predicate v.pack:altar/removal run function v.pack:altar/altar_remove