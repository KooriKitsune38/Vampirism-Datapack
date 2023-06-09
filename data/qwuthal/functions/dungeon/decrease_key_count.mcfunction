#> qwuthal:dungeon/decrease_key_count

scoreboard players operation .keyCount v.Values -= .1 v.Values

execute store result entity @s Item.Count byte 1 run scoreboard players get .keyCount v.Values