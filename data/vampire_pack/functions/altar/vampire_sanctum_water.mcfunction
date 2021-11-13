advancement revoke @s only vampire_pack:eyes/consumed/vampire_drank_sanctum
effect give @s[predicate=vampire_pack:chance_60] instant_damage 999999 0 true
execute if entity @s[nbt=!{ActiveEffects:[{Id:7b, Amplifier:0b}]}] run function vampire_pack:vampirism/cure_vampirism
execute if entity @s[gamemode=creative] run function vampire_pack:vampirism/cure_vampirism