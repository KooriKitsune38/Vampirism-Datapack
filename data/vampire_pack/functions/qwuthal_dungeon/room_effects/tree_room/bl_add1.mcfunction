scoreboard players add @s bloodlevel 1
execute anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust nether_bricks ^ ^ ^0.25 0.1 0.05 0.1 1 3 normal 
playsound minecraft:block.beehive.drip ambient @a ~ ~ ~ 0.5 1.5
scoreboard players reset @s treebltimer
