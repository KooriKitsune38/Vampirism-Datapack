#> v.pack:temple/t.particles/particle_groups

## v.Anchor ##
particle minecraft:portal ~ ~1.5 ~ 0 0 0 1 5 force
tp @s ~ ~ ~ ~-10 ~
execute unless entity @s[tag=TempleStage4] run particle minecraft:witch ^0.5 ^2 ^ 0 0 0 100 3 normal

#Stage2#
execute as @s[tag=TempleStage2] run fill ~ ~1 ~ ~ ~1 ~ respawn_anchor[charges=2] replace respawn_anchor

#Stage3#
execute as @s[tag=TempleStage3] positioned ~2 ~3 ~ if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal
execute as @s[tag=TempleStage3] positioned ~-2 ~3 ~ if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal
execute as @s[tag=TempleStage3] positioned ~ ~2 ~2 if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal
execute as @s[tag=TempleStage3] positioned ~ ~2 ~-2 if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal

execute as @s[tag=TempleStage3] run fill ~ ~1 ~ ~ ~1 ~ respawn_anchor[charges=3] replace respawn_anchor

#Stage4#
execute as @s[tag=TempleStage4] positioned ~2 ~2 ~ if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal
execute as @s[tag=TempleStage4] positioned ~-2 ~2 ~ if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal
execute as @s[tag=TempleStage4] positioned ~ ~3 ~2 if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal
execute as @s[tag=TempleStage4] positioned ~ ~3 ~-2 if block ~ ~ ~ wither_skeleton_skull run particle minecraft:ash ~ ~ ~ 0 0 0 1 10 normal

execute as @s[tag=TempleStage4] run fill ~1 ~ ~1 ~1 ~ ~1 fire replace air
execute as @s[tag=TempleStage4] run fill ~-1 ~ ~1 ~-1 ~ ~1 fire replace air
execute as @s[tag=TempleStage4] run fill ~-1 ~ ~-1 ~-1 ~ ~-1 fire replace air
execute as @s[tag=TempleStage4] run fill ~1 ~ ~-1 ~1 ~ ~-1 fire replace air

execute as @s[tag=TempleStage4] run execute as @a[distance=..7,predicate=!v.pack:player/is.vampire] unless entity @s[scores={vampirismtimer=1..}] run effect give @s blindness 2 0

execute as @s[tag=TempleStage4] run fill ~ ~1 ~ ~ ~1 ~ respawn_anchor[charges=4] replace respawn_anchor