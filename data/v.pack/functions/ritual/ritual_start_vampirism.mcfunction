effect give @s regeneration 5 4 true
effect give @s fire_resistance 5 0 true
effect clear @s blindness
scoreboard players add @s vampirismtimer 1
playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 1 2
execute at @s run particle minecraft:cloud ~ ~1 ~ 0.2 0.5 0.2 0.1 100 normal
execute at @s run particle minecraft:flash ~ ~1 ~ 0.2 0.5 0.2 0.1 10 force