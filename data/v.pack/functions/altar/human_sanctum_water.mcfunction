effect give @s regeneration 10 1 true
effect give @s absorption 30 1 true
effect give @s resistance 30 0 true
effect give @s glowing 60 0 true
scoreboard players reset @s vampirismtimer
scoreboard players reset @s spoopytimer
execute at @s anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust warped_planks ^ ^ ^0.25 0.1 0.05 0.1 1 20 normal
advancement grant @s only v.pack:altar/sanctum_human_adv
playsound minecraft:item.totem.use ambient @a ~ ~ ~ .1 2