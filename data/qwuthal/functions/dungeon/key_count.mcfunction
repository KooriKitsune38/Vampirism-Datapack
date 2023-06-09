#> qwuthal:dungeon/key_count

execute store result score .keyCount v.Values run data get entity @s Item.Count

execute if score .keyCount v.Values matches 1 run kill @s
execute if score .keyCount v.Values matches 2.. run function qwuthal:dungeon/decrease_key_count