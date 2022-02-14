#> v.pack:vampirism/buffs/sneak_inv

execute unless predicate v.pack:player/invisibility run playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 0.3 0.5

effect give @s invisibility 1 0 true