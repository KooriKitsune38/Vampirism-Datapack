#> v.pack:vampirism/nerfs/touching_iron

# Effect
effect give @s wither 2 0 true

# Particle
particle minecraft:smoke ~ ~ ~ 0.3 0.1 0.3 0 1 force

# Tag
tag @s add v.touchingIron

# Advancement
advancement grant @s only v.pack:vampirism/iron_touch_adv