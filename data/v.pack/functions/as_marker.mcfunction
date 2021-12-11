# v.Anchors particles
#> Particles4
execute if entity @s[tag=v.templePart] run function v.pack:temple/t.particles/part4

# Brewing Blood
#> v.brewStand Stuff
execute if entity @s[tag=v.brewStand] run function v.pack:brewing_stand/brewing_stand

# v.Altar of Purification
execute if entity @s[tag=v.Altar,predicate=v.pack:world/in_overworld] run function v.pack:altar/altar_stuff

# Broken Temple
#> Center Stand
execute if entity @s[tag=v.bVampTemple] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=v.bVampTemple] positioned ~ ~0.5 ~ run function v.pack:broken_temple/broken_center