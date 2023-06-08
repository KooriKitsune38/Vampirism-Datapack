advancement revoke @s only v.pack:consumed/vampire_drank_sanctum
effect give @s[predicate=v.pack:chance_60] instant_damage infinite 0 true
execute if entity @s[nbt=!{ActiveEffects:[{Id:7, Amplifier:0b}]}] run function v.pack:vampirism/cure_vampirism
execute if entity @s[gamemode=creative] run function v.pack:vampirism/cure_vampirism