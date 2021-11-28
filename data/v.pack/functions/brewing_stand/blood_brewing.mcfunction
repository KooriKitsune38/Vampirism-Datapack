## Timers ##
scoreboard players add @s brewingtimer 1
scoreboard players reset @s[scores={brewingtimer=2401..}] brewingtimer

## BrewingResults
execute if entity @s[scores={brewingtimer=2400}] run function v.pack:brews/blood_brew

## Particles ##
execute if entity @s[scores={brewingtimer=1..800},predicate=v.pack:chance_50] run particle minecraft:dust 0.259 0 0 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal
execute if entity @s[scores={brewingtimer=801..1600},predicate=v.pack:chance_50] run particle minecraft:dust 0.58 0.008 0.008 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal
execute if entity @s[scores={brewingtimer=1600..2401},predicate=v.pack:chance_50] run particle minecraft:dust 0.914 0 0 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0 3 normal

## Playsounds ##
execute if entity @s[scores={brewingtimer=801}] run playsound minecraft:item.bottle.empty block @a ~ ~ ~ 0.1 2
execute if entity @s[scores={brewingtimer=1601}] run playsound minecraft:item.bottle.empty block @a ~ ~ ~ 0.1 2
execute if entity @s[scores={brewingtimer=2}] run playsound minecraft:item.bottle.empty block @a ~ ~ ~ 0.2 0.1

## UI ##
scoreboard players add @s brewuitimer 1
execute if entity @s[scores={brewuitimer=5}] run scoreboard players remove @s custbrewtime 1
execute if entity @s[scores={brewuitimer=6..}] run scoreboard players reset @s brewuitimer