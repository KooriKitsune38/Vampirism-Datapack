advancement revoke @s only v.pack:eyes/consumed/vampire_drank_sanctum
effect give @s[predicate=v.pack:chance_60] instant_damage 999999 0 true
execute if entity @s[nbt=!{ActiveEffects:[{Id:7b, Amplifier:0b}]}] run function v.pack:vampirism/cure_vampirism
execute if entity @s[gamemode=creative] run function v.pack:vampirism/cure_vampirism