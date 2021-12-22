#> v.pack:b.transf/v1.bat

execute store result score .x v.Values run data get entity @s Pos[0] 100
execute store result score .y v.Values run data get entity @s Pos[1] 100
execute store result score .z v.Values run data get entity @s Pos[2] 100

execute rotated as @p run tp ^ ^ ^.01

execute store result score .x1 v.Values run data get entity @s Pos[0] 100
execute store result score .y1 v.Values run data get entity @s Pos[1] 100
execute store result score .z1 v.Values run data get entity @s Pos[2] 100

scoreboard players operation .x1 v.Values -= .x v.Values
scoreboard players operation .y1 v.Values -= .y v.Values
scoreboard players operation .z1 v.Values -= .z v.Values

execute store result entity @s Motion[0] double .6 run scoreboard players get .x1 v.Values
execute store result entity @s Motion[1] double .6 run scoreboard players get .y1 v.Values
execute store result entity @s Motion[2] double .6 run scoreboard players get .z1 v.Values