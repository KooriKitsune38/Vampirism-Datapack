#> v.pack:as_everyone

# Timers
## Adds
#> Vampirism Timer
scoreboard players add @s[scores={vampirismtimer=1..}] vampirismtimer 1
#> Spoopy Timer
scoreboard players add @s[scores={spoopytimer=1..}] spoopytimer 1

## Resets
#> Spoopy Timer
scoreboard players reset @s[scores={spoopytimer=72000..}] spoopytimer

# Spoopy Sunds
execute if score @s spoopytimer matches 1.. run function v.pack:sounds/spoopy.sounds

# Vampire Stuff
execute if entity @s[predicate=v.pack:player/is.vampire] run function v.pack:vampirism/vampire.main

# - Vampirism Transformation - ##
execute if score @s vampirismtimer matches 0.. run function v.pack:vampirism/transformation/vamp.transf

# On respawn anchor
execute if entity @s[predicate=v.pack:temple/wand_on_hand,predicate=v.pack:player/is_sneaking] if block ~ ~-0.25 ~ minecraft:respawn_anchor[charges=0] run function v.pack:temple/temple.req

# Brewing Stand
execute if entity @s[predicate=v.pack:temple/wand_on_hand] if block ~ ~ ~ brewing_stand unless entity @e[type=marker,tag=v.brewStand,distance=..1] run function v.pack:brews/act.extractor

# reset t.errorDisp
execute unless predicate v.pack:player/is_sneaking run tag @s remove t.errorDisp

# Clear Papers
clear @s paper{StageActivator:2}
clear @s paper{StageActivator:3}
clear @s paper{StageActivator:4}