#> v.pack:b.transf/bat_conditions

execute if score .batEnabled v.Values matches 1 unless predicate v.pack:player/has_armour if score .tempFallDist v.Values matches 15.. if entity @s[predicate=v.pack:player/is_sneaking,tag=!t.transformed] positioned ~ ~1 ~ run function v.pack:b.transf/bat_start