#> k.gen:misc/book.add1

execute store result score .books v.Values run data get entity @s data.Books

scoreboard players operation .books v.Values += .1 v.Values

execute store result entity @s data.Books int 1 run scoreboard players get .books v.Values