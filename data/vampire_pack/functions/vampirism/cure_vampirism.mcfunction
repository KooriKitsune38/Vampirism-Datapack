tag @s remove Vampire
scoreboard players reset @s bloodlevel
scoreboard players reset @s vampirelvl
scoreboard players reset @s vampirismtimer
scoreboard players reset @s spoopytimer
scoreboard players reset @s vampirekills
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 0.6
execute anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust warped_planks ^ ^ ^0.25 0.1 0.05 0.1 1 20 normal
advancement grant @s only vampire_pack:vampirism/cured_adv