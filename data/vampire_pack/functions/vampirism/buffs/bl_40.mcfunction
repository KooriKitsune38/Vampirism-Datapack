
#> If light level 1 give resistance
execute if predicate vampire_pack:world/is_dark1 run effect give @s resistance 1 0 true

#> Glow Every Mob nearby
execute at @e[distance=.1..10,predicate=!vampire_pack:player/dark_vision_exeptions,predicate=vampire_pack:world/is_dark1] run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.3 0.2 0 1 force @a[predicate=vampire_pack:player/tag_vampire]

#> Give regeneration at night
execute if predicate vampire_pack:world/is_nighttime run effect give @s[predicate=!vampire_pack:player/regeneration] regeneration 3 0 true

# Advancemetns
#> Dark Sight
execute if entity @e[distance=.1..10,predicate=vampire_pack:world/is_dark1,predicate=!vampire_pack:player/dark_vision_exeptions] run advancement grant @s only vampire_pack:vampirism/dark_sight