#> Gap
execute if predicate v.pack:world/bat.gap run function v.pack:b.transf/bat.gap
execute if predicate v.pack:world/bat.gap at @s as @e[type=bat,tag=.batTemp,limit=1,sort=nearest] positioned ~ ~.95 ~ rotated ~90 ~ run tp @s ^ ^ ^ ~-90 ~
#> 0 (Old bat spectator)
execute unless predicate v.pack:world/bat.gap at @s as @e[type=bat,tag=.batTemp,limit=1,sort=nearest] positioned ~ ~.95 ~ positioned ^ ^ ^.2 run tp @s ^ ^ ^ ~ ~

# Stop Conditions
#> Air
execute unless predicate v.pack:world/bat.gap unless block ~ ~ ~ #v.pack:air run function v.pack:b.transf/bat_stop
execute unless predicate v.pack:world/bat.gap at @s unless block ~ ~.95 ~ #v.pack:air at @e[type=bat,tag=.batTemp,limit=1,sort=nearest] run function v.pack:b.transf/bat_stop

#> If Entity
tag @s add .temp
execute if entity @e[type=!#v.pack:dont_target,tag=!.temp,tag=!.batTemp,distance=..0001] run function v.pack:b.transf/bat_stop
tag @s remove .temp