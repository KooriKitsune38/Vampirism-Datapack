# Vampiric Transformation
#> Start sun weakness
execute if score @s vampirismtimer matches 24000.. if predicate v.pack:player/sunlight_exposure run effect give @s nausea 5 0 true

#> Start weakness
execute if score @s vampirismtimer matches 30000.. run effect give @s weakness 1 0 true

#> Start vampire particles
execute if score @s vampirismtimer matches 30000.. if predicate v.pack:chance_03 run particle minecraft:falling_dust redstone_wire ~ ~1 ~ 0.3 0.7 0.3 1 10 force

#> Start resistance in dark
execute if score @s vampirismtimer matches 48000.. if predicate v.pack:world/is_dark1 run effect give @s resistance 1 0 true

#> Start Iron Weakness
execute if score .ironDamage v.Values matches 1 if score @s vampirismtimer matches 60000.. run function v.pack:vampirism/transformation/iron.weak

#> 1st Part
execute if score @s vampirismtimer matches ..60001 run function v.pack:vampirism/transformation/1st
#> 2nd Part
execute if score @s vampirismtimer matches 71000..71899 run function v.pack:vampirism/transformation/2nd
#> 3rd Part
execute if score @s vampirismtimer matches 71900.. run function v.pack:vampirism/transformation/3rd

#> End of it
execute if score @s vampirismtimer matches 72100.. run function v.pack:vampirism/transformation/go.vampire