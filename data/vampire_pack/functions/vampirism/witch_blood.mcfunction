scoreboard players add @s bloodlevel 10
effect give @s[predicate=vampire_pack:chance_30] nausea 8 0 true
effect give @s[nbt={ActiveEffects:[{Id:9b, Amplifier:0b}]}] hunger 1 0 true
execute at @s anchored eyes positioned ^ ^-0.1 ^0.1 run particle minecraft:falling_dust nether_bricks ^ ^ ^0.25 0.1 0.05 0.1 1 10 normal
advancement revoke @s only vampire_pack:eyes/consumed/ate_witch_eyes
