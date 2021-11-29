
#> If light level 1 give resistance
execute if predicate v.pack:world/is_dark1 run effect give @s resistance 1 0 true

#> Glow Every Mob nearby
execute at @e[distance=.1..10,predicate=!v.pack:player/dark_vision_exeptions,predicate=v.pack:world/is_dark1,tag=!t.bat] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0 1 force @a[predicate=v.pack:player/is.vampire]

#> Give regeneration at night
execute if predicate v.pack:world/is_nighttime run effect give @s[predicate=!v.pack:player/regeneration] regeneration 3 0 true

# Advancemetns
#> Dark Sight
execute if entity @e[distance=.1..10,predicate=v.pack:world/is_dark1,predicate=!v.pack:player/dark_vision_exeptions] run advancement grant @s only v.pack:vampirism/dark_sight