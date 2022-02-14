#> v.pack:b.transf/bat_continue
# Increase bloodtimer
scoreboard players add @s[tag=t.transformed] bloodtimer 4

# Bat modes
#> Gap
execute if predicate v.pack:world/bat.gap run function v.pack:b.transf/bat.gap
execute if predicate v.pack:world/bat.gap if score .batVersion v.Values matches 0 at @s as @e[type=bat,tag=.batTemp,limit=1,sort=nearest] positioned ~ ~.95 ~ rotated ~90 ~ run tp @s ^ ^ ^ ~-90 ~
#> 0 (Old bat spectator)
execute unless predicate v.pack:world/bat.gap if score .batVersion v.Values matches 0 at @s as @e[type=bat,tag=.batTemp,limit=1,sort=nearest] positioned ~ ~.95 ~ rotated ~90 ~ run tp @s ^.2 ^ ^ ~-90 ~

# Stop Conditions
#> Air
execute unless predicate v.pack:world/bat.gap unless block ~ ~ ~ #v.pack:air run function v.pack:b.transf/bat_stop
execute unless predicate v.pack:world/bat.gap at @s unless block ~ ~.95 ~ #v.pack:air at @e[type=bat,tag=.batTemp,limit=1,sort=nearest] run function v.pack:b.transf/bat_stop


#> If Entity
tag @s add .temp
execute if entity @e[type=!#v.pack:dont_target,tag=!.temp,tag=!.batTemp,distance=..0001] run function v.pack:b.transf/bat_stop
tag @s remove .temp
#> If bat takes damage
execute unless entity @e[type=bat,tag=.batTemp,limit=1,sort=nearest,nbt={HurtTime:0s}] run function v.pack:b.transf/bat_stop

# Night Vision
execute if predicate v.pack:world/bat.vision run effect give @s night_vision 11 0 true

# Particles
execute if predicate v.pack:chance_30 run particle dust 0.455 0.027 0.349 1 ~ ~.5 ~ 0.3 0.6 0.3 0.05 1 force @a[predicate=v.pack:player/is.vampire]