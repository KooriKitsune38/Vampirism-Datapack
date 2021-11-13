## Timers ##
scoreboard players add @s brewingtimer 1
scoreboard players reset @s[scores={brewingtimer=3605..}] brewingtimer

## Enchanted Brew
execute if entity @s[scores={brewingtimer=3600}] run function vampire_pack:brews/enchanted_brew

## Particles ##
execute if entity @s[scores={brewingtimer=1..800},predicate=vampire_pack:chance_50] at @s run particle minecraft:dust 0.259 0 0.11 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal
execute if entity @s[scores={brewingtimer=801..1600},predicate=vampire_pack:chance_50] at @s run particle minecraft:dust 0.408 0.004 0.204 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal
execute if entity @s[scores={brewingtimer=1600..2400},predicate=vampire_pack:chance_50] at @s run particle minecraft:dust 0.675 0 0.282 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal
execute if entity @s[scores={brewingtimer=2401..3601},predicate=vampire_pack:chance_50] at @s run particle minecraft:dust 0.886 0 0.369 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal

## Sounds ##
execute if entity @s[scores={brewingtimer=801}] at @s run playsound minecraft:item.bottle.empty ambient @a ~ ~ ~ 0.1 2
execute if entity @s[scores={brewingtimer=1601}] at @s run playsound minecraft:item.bottle.empty block @a ~ ~ ~ 0.1 2
execute if entity @s[scores={brewingtimer=2401}] at @s run playsound minecraft:item.bottle.empty block @a ~ ~ ~ 0.1 2
execute if entity @s[scores={brewingtimer=2}] at @s run playsound minecraft:item.bottle.empty block @a ~ ~ ~ 0.2 0.6

## UI ##
execute if entity @s[scores={brewingtimer=1..}] run scoreboard players add @s brewuitimer 1
execute if entity @s[scores={brewuitimer=9..}] run scoreboard players reset @s brewuitimer
execute if entity @s[scores={brewuitimer=8}] run scoreboard players remove @s custbrewtime 1