#> vampire_pack:vampirism/nerfs/touching_iron
effect give @s wither 2 0 true
particle minecraft:smoke ~ ~ ~ 0.3 0.1 0.3 0 1 force
execute if score @s burnsoundtimer matches 5 run playsound minecraft:entity.vex.death player @a ~ ~ ~ 0.2
advancement grant @s only vampire_pack:vampirism/iron_touch_adv