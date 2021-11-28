#> v.pack:schedules/burn.sound

# If touching iron
execute if predicate v.pack:chance_30 if entity @s[tag=v.touchingIron] run playsound minecraft:entity.vex.death player @a ~ ~ ~ 0.5

# If exposed to sun
execute if predicate v.pack:chance_30 if entity @s[tag=v.sunExposed] run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.05 0.9
execute if entity @s[tag=v.sunExposed] positioned ~ ~1 ~ run particle minecraft:flame ~ ~ ~ 0.3 0.5 0.3 0.05 20 force

# Remove Tags
tag @s remove v.sunExposed
tag @s remove v.touchingIron