#> v.pack:vampirism/bl/remove.1bl.conds

# Conditions #
#> Unless night and in overworld
execute if predicate v.pack:world/in_overworld unless predicate v.pack:world/is_nighttime run scoreboard players remove @s v.bloodL 1

#> If night and with a 35% chance
execute if predicate v.pack:world/in_overworld if predicate v.pack:world/is_nighttime run scoreboard players remove @s[predicate=v.pack:chance_35] v.bloodL 1

#> Unless in overworld and with 35% chance
execute unless predicate v.pack:world/in_overworld run scoreboard players remove @s[predicate=v.pack:chance_35] v.bloodL 1