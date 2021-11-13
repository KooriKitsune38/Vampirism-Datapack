# Conditions #
#> Unless night and in overworld
execute if predicate vampire_pack:world/in_overworld unless predicate vampire_pack:world/is_nighttime run scoreboard players remove @s bloodlevel 1

#> If night and with a 35% chance
execute if predicate vampire_pack:world/in_overworld if predicate vampire_pack:world/is_nighttime run scoreboard players remove @s[predicate=vampire_pack:chance_35] bloodlevel 1

#> Unless in overworld and with 35% chance
execute unless predicate vampire_pack:world/in_overworld run scoreboard players remove @s[predicate=vampire_pack:chance_35] bloodlevel 1

#> Set the bloodtimer back to 1
scoreboard players set @s bloodtimer 1 