#> qwuthal:dungeon/tree_water_buffs

effect give @s[nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] regeneration 2 1
effect give @s saturation 1 0 true

execute anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust netherrack ^ ^ ^0.25 0.1 0.05 0.1 1 1 normal

scoreboard players add @s v.bloodL 1