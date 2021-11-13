scoreboard players add @s bloodlevel 12
effect give @s instant_health 1 0 true
execute at @s anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust nether_bricks ^ ^ ^0.25 0.1 0.05 0.1 1 10 normal
advancement revoke @s only vampire_pack:eyes/consumed/ate_human_eyes
