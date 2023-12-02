# v.Anchor Particles
function v.pack:temple/t.particles/particle_groups

# Particle on top
particle flame ~ ~2 ~ .1 .1 .1 0.01 1

# Temple Vampirism Activator
execute as @s[tag=TempleStage4] run execute as @a[distance=..5,predicate=!v.pack:player/is.vampire] unless entity @s[scores={vampirismtimer=1..}] store result score @s ritualhealth run data get entity @s Health
execute as @s[tag=TempleStage4] run execute as @a[distance=..5,predicate=v.pack:player/ritual_requirements,predicate=!v.pack:player/is.vampire] unless entity @s[scores={vampirismtimer=1..}] run function v.pack:ritual/ritual_start_vampirism

# Spoopy sounds
scoreboard players add @s templesoundtimer 1
execute if score @s templesoundtimer matches 1.. run function v.pack:sounds/temple_ambient
execute if score @s templesoundtimer matches 600.. run scoreboard players reset @s templesoundtimer

# Kill the temple trader if no anchor is colliding
execute unless block ~ ~1.5 ~ minecraft:respawn_anchor run scoreboard players add @s tradertimer 1
execute if score @s tradertimer matches 10.. run function v.pack:temple/temple_remove_anchor