#> v.pack:vampirism/buffs/bl_80

# Sun Exposure Option
#> Off (No Sun Transformation)
execute if score .batUnderSun v.Values matches 0 unless predicate v.pack:player/under_sunlight run function v.pack:b.transf/bat_conditions
#> On (Sun Allowed)
execute if score .batUnderSun v.Values matches 1 run function v.pack:b.transf/bat_conditions