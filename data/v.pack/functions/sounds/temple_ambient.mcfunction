execute if entity @s[scores={templesoundtimer=20}] run playsound minecraft:block.portal.ambient ambient @a ~ ~ ~ 1 0.5
execute if entity @s[scores={templesoundtimer=40}] if predicate v.pack:chance_30 run playsound minecraft:particle.soul_escape ambient @a ~ ~ ~ 0.5 0.4
execute if entity @s[scores={templesoundtimer=40}] if predicate v.pack:chance_30 run playsound minecraft:particle.soul_escape ambient @a ~ ~ ~ 0.3 1.2
execute if entity @s[scores={templesoundtimer=200}] if predicate v.pack:chance_30 run playsound minecraft:entity.vex.charge ambient @a ~ ~ ~ 0.5 0.4
execute if entity @s[scores={templesoundtimer=300}] if predicate v.pack:chance_30 run playsound minecraft:entity.vex.charge ambient @a ~ ~ ~ 0.5 0.4
execute if entity @s[scores={templesoundtimer=400}] if predicate v.pack:chance_30 run playsound minecraft:particle.soul_escape ambient @a ~ ~ ~ 0.5 0.9
execute if entity @s[scores={templesoundtimer=440}] if predicate v.pack:chance_30 run playsound minecraft:particle.soul_escape ambient @a ~ ~ ~ 0.2 0.7
scoreboard players reset @s[scores={templesoundtimer=441..}] templesoundtimer