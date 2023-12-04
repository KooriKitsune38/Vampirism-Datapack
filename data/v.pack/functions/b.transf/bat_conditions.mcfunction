#> v.pack:b.transf/bat_conditions

# Remove error log when not sneaking
execute unless predicate v.pack:player/is_sneaking run tag @s remove t.ArmourErrorDisplayed

# Conditions
execute if score .batEnabled v.Values matches 1 if score .tempFallDist v.Values matches 15.. if entity @s[predicate=v.pack:player/is_sneaking,tag=!t.transformed] run function v.pack:b.transf/pre_transformation