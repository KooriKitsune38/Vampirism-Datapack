#> v.pack:vampirism/cure_vampirism

tag @s remove Vampire
tag @s remove v.lvl1
tag @s remove v.lvl2
tag @s remove v.lvl3
tag @s remove v.lvl4
tag @s remove v.lvl5
tag @s remove v.lvl6
scoreboard players reset @s v.bloodL
scoreboard players reset @s vampirismtimer
scoreboard players reset @s spoopytimer
scoreboard players reset @s vampirekills
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 0.5 0.6
execute anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust warped_planks ^ ^ ^0.25 0.1 0.05 0.1 1 20 normal
advancement grant @s only v.pack:vampirism/cured_adv
advancement revoke @s from v.pack:levelups/level2