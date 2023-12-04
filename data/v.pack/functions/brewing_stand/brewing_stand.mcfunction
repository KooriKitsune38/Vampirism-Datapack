# Fuel
execute store result score .brewFuel v.Values run data get block ~ ~ ~ Fuel

# Items Count
execute store result score .brewItems v.Values run data get block ~ ~ ~ Items[{Slot:3b}].Count

# Brews
#> BloodBrew
execute if score .brewFuel v.Values matches 1..21 if entity @s[predicate=v.pack:brewing_stand/blood_brew] run function v.pack:brewing_stand/blood_brewing

#> EnchantedBrew
execute if score .brewFuel v.Values matches 1..21 if entity @s[predicate=v.pack:brewing_stand/enchanted_brew] run function v.pack:brewing_stand/enchanted_brewing

# Timer Reset
execute if entity @s[predicate=!v.pack:brewing_stand/blood_brew,predicate=!v.pack:brewing_stand/enchanted_brew] run scoreboard players reset @s brewingtimer

## UI ##
execute if entity @s[scores={custbrewtime=..-1}] run scoreboard players add @s custbrewtime 399
execute unless entity @s[scores={brewingtimer=1..}] run scoreboard players reset @s custbrewtime
execute if entity @s[scores={custbrewtime=0..}] at @s store result block ~ ~ ~ BrewTime short 1 run scoreboard players get @s custbrewtime

## Kill if not block and block datas ##
execute unless block ~ ~ ~ brewing_stand run kill @s

## Particles ##
execute if entity @s[predicate=v.pack:chance_30] run particle minecraft:bubble_pop ~ ~ ~ 0.2 0.2 0.2 0 1 force