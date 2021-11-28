#> vampire_pack:as_everyone

# Timers
## Adds
#> Vampirism Timer
scoreboard players add @s[scores={vampirismtimer=1..}] vampirismtimer 1
#> Spoopy Timer
scoreboard players add @s[scores={spoopytimer=1..}] spoopytimer 1

## Resets
#> Burn Sound Timer
scoreboard players reset @s[scores={burnsoundtimer=30..}] burnsoundtimer
#> Spoopy Timer
scoreboard players reset @s[scores={spoopytimer=72000..}] spoopytimer

# Spoopy Sunds
execute if score @s spoopytimer matches 1.. run function vampire_pack:sounds/spoopy_sounds

# Vampire Stuff
execute if entity @s[predicate=vampire_pack:player/tag_vampire] run function vampire_pack:vampirism/vampire_stuff

# - Vampirism Transformation - ##
execute if score @s vampirismtimer matches 0.. run function vampire_pack:vampirism/transformation/vampire_transformation

# On respawn anchor
execute if entity @s[predicate=vampire_pack:temple/wand_on_hand,predicate=vampire_pack:player/is_sneaking] if block ~ ~-0.25 ~ minecraft:respawn_anchor[charges=0] run function vampire_pack:temple/temple_requirements

# Brewing Stand
execute if entity @s[predicate=vampire_pack:temple/wand_on_hand] if block ~ ~ ~ brewing_stand unless entity @e[type=area_effect_cloud,tag=BrewingStand,distance=..1] run function vampire_pack:brews/extractor_activate

execute unless predicate vampire_pack:player/is_sneaking run tag @s remove TempleErrorDisplayed