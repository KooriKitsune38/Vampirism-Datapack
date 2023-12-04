#> v.pack:b.transf/pre_transformation

# Start Bat
#> No Armour
execute unless predicate v.pack:player/has_armour positioned ~ ~1 ~ run function v.pack:b.transf/bat_start
#> Armour Error
execute if predicate v.pack:player/has_armour unless entity @s[tag=t.ArmourErrorDisplayed] run function v.pack:b.transf/armour_error