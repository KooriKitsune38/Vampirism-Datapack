#> v.pack:sounds/spoopy.sounds

execute if entity @s[predicate=!v.pack:player/is.vampire,scores={spoopytimer=1230..1235}] run playsound minecraft:entity.fox.screech hostile @s ~ ~ ~ 0.5 0.6
execute if entity @s[scores={spoopytimer=1360..1365}] run playsound minecraft:entity.fox.screech hostile @s ~ ~ ~ 0.1 1.7
execute if entity @s[scores={spoopytimer=1600..1605}] run playsound minecraft:entity.fox.screech hostile @s ~ ~ ~ 1 0.8
execute if entity @s[scores={spoopytimer=2500..2505}] run playsound minecraft:entity.fox.screech hostile @s ~ ~ ~ 1 1.3
execute if entity @s[scores={spoopytimer=1200..1205}] run playsound minecraft:entity.fox.screech hostile @s ~ ~ ~ 1 0.1
execute if entity @s[scores={spoopytimer=400..405}] run playsound minecraft:entity.fox.screech hostile @s ~ ~ ~ 2 0.4