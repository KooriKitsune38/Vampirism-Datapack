#> v.pack:b.transf/bat_continue

# Increase bloodtimer
scoreboard players add @s[tag=t.transformed] bloodtimer 4

# Bat modes
#> Old Bat
execute if score .batVersion v.Values matches 0 run function v.pack:b.transf/old_bat

#> New Bat
execute if score .batVersion v.Values matches 1 run function v.pack:b.transf/bat_control

# Stop Conditions
#> If bat or player takes damage
execute unless entity @e[type=bat,tag=.batTemp,limit=1,sort=nearest,nbt={HurtTime:0s}] run function v.pack:b.transf/bat_stop
execute unless entity @s[nbt={HurtTime:0s}] run function v.pack:b.transf/bat_stop

# Night Vision
execute if predicate v.pack:world/bat.vision run effect give @s night_vision 11 0 true

# Particles
execute if predicate v.pack:chance_30 run particle dust 0.455 0.027 0.349 1 ~ ~.5 ~ 0.3 0.6 0.3 0.05 1 force @a[predicate=v.pack:player/is.vampire]