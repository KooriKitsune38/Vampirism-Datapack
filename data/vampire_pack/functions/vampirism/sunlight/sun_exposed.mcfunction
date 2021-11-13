## Effects ##
effect give @s wither 2 0 true
effect give @s hunger 1 0 true
effect give @s nausea 5 0 true

## Sounds & Particles ##
execute as @s[scores={burnsoundtimer=20}] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.05 0.9
execute as @s[scores={burnsoundtimer=20}] positioned ~ ~1 ~ run particle minecraft:flame ~ ~ ~ 0.3 0.5 0.3 0.05 20 force

## Timers ##
scoreboard players add @s burnsoundtimer 1

## Advancements ##
advancement grant @s only vampire_pack:vampirism/sun_exposed_adv