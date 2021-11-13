# Anchor Particles
function vampire_pack:temple/temple_particles/particle_groups

# Temple Vampirism Activator
execute as @s[tag=TempleStage4] run execute as @a[distance=..5,predicate=!vampire_pack:player/tag_vampire] unless entity @s[scores={vampirismtimer=1..}] store result score @s ritualhealth run data get entity @s Health
execute as @s[tag=TempleStage4] run execute as @a[distance=..5,predicate=vampire_pack:player/ritual_requirements,predicate=!vampire_pack:player/tag_vampire] unless entity @s[scores={vampirismtimer=1..}] run function vampire_pack:ritual/ritual_start_vampirism

# Spoopy sounds
scoreboard players add @s templesoundtimer 1
execute if score @s templesoundtimer matches 1.. run function vampire_pack:sounds/temple_ambient
execute if score @s templesoundtimer matches 600.. run scoreboard players reset @s templesoundtimer

# Kill the temple trader if no anchor is colliding
execute unless block ~ ~1.5 ~ minecraft:respawn_anchor run scoreboard players add @s tradertimer 1
execute if score @s tradertimer matches 10.. run function vampire_pack:temple/temple_remove_anchor