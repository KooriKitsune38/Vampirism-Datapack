# Anchors particles
#> Particles4
tp @s[tag=ArmorStandParticles4] ~ ~ ~ ~25 ~
execute if entity @s[tag=ArmorStandParticles4] run particle falling_dust purple_glazed_terracotta ^2 ^ ^ 0.1 0.05 0.1 1 3 force
execute if entity @s[tag=ArmorStandParticles4] positioned ~ ~-4.5 ~ if entity @e[type=villager,distance=..1,tag=Anchor] run function vampire_pack:temple/particles_down
execute if entity @s[tag=ArmorStandParticles4] positioned ~ ~2 ~ if entity @e[type=villager,distance=..1,tag=Anchor] run function vampire_pack:temple/particles_up
tp @s[tag=ArmorStandParticles4b] ~ ~ ~ ~-5 ~
execute if entity @s[tag=ArmorStandParticles4b] run particle dust 0.337 0.008 0.588 2 ^3.5 ^ ^0.5 0.2 0.2 0.2 100 10 normal
execute if entity @s[tag=ArmorStandParticles4b] run particle soul ^3.5 ^ ^ 0.2 0.3 0.2 0 1 normal
execute if entity @s[tag=ArmorStandParticles4b] positioned ~ ~-4.5 ~ if entity @e[type=villager,distance=..1,tag=Anchor] run function vampire_pack:temple/particles_down
execute if entity @s[tag=ArmorStandParticles4b] positioned ~ ~2 ~ if entity @e[type=villager,distance=..1,tag=Anchor] run function vampire_pack:temple/particles_up

execute if entity @s[tag=ParticlesDown] run tp @s ~ ~-.1 ~
execute if entity @s[tag=ParticlesUp] run tp @s ~ ~.1 ~
#execute if entity @s[scores={particlesposy=..0}] run tp @s ~ ~-0.1 ~
#execute if entity @s[scores={particlesposy=0..}] run tp @s ~ ~0.1 ~

# Timer
#execute as @e[scores={particlesposy=50..}] run scoreboard players set @s particlesposy -51

# Broken Temple
#> Loot
execute if entity @s[tag=BrokenVampireTempleChest] run function vampire_pack:broken_temple/broken_temple_loots/broken_temple_chest

#> Center Stand
execute if entity @s[tag=BrokenVampireTemple] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=BrokenVampireTemple] positioned ~ ~0.5 ~ run function vampire_pack:broken_temple/broken_center
