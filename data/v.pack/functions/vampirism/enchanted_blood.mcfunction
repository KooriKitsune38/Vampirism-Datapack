scoreboard players add @s v.bloodL 35
effect give @s instant_health 1 1 true
effect give @s resistance 30 0 true
execute at @s positioned ~ ~1.50 ~ run particle minecraft:dust 0.612 0.031 0.243 1 ^ ^ ^0.25 0.1 0.05 0.1 1 20 normal
advancement revoke @s only v.pack:consumed/drank_enchanted_blood