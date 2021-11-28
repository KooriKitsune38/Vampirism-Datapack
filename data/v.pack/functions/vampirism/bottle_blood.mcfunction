scoreboard players add @s v.bloodL 20
effect give @s instant_health 1 0 true
execute at @s anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust nether_bricks ^ ^ ^0.25 0.1 0.05 0.1 1 20 normal
advancement revoke @s only v.pack:eyes/consumed/drank_blood
