advancement revoke @s only v.pack:consumed/vampire_drank_sanctum
effect give @s[predicate=v.pack:chance_60] instant_damage infinite 0 true
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:instant_damage", amplifier:0b}]}] run function v.pack:vampirism/cure_vampirism
execute if entity @s[gamemode=creative] run function v.pack:vampirism/cure_vampirism