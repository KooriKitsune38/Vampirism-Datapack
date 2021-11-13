# Brews
#> BloodBrew
execute if entity @s[predicate=vampire_pack:brewing_stand/blood_brew] run function vampire_pack:brewing_stand/blood_brewing

#> EnchantedBrew
execute if entity @s[predicate=vampire_pack:brewing_stand/enchanted_brew] run function vampire_pack:brewing_stand/enchanted_brewing

# Timer Reset
execute if entity @s[predicate=!vampire_pack:brewing_stand/blood_brew,predicate=!vampire_pack:brewing_stand/enchanted_brew] run scoreboard players reset @s brewingtimer

# Fuel
execute store result score @s brewingcurfuel run data get block ~ ~ ~ Fuel

# Items Count
execute store result score @s brewingcuritems run data get block ~ ~ ~ Items[{Slot:3b}].Count

## UI ##
execute if entity @s[scores={custbrewtime=..-1}] run scoreboard players add @s custbrewtime 399
execute unless entity @s[scores={brewingtimer=1..}] run scoreboard players reset @s custbrewtime
execute if entity @s[scores={custbrewtime=0..}] at @s store result block ~ ~ ~ BrewTime short 1 run scoreboard players get @s custbrewtime

## Kill if not block and block datas ##
execute unless block ~ ~ ~ brewing_stand run kill @s
execute if block ~ ~ ~ brewing_stand run data merge block ~ ~ ~ {CustomName:'{"text":" Enhanced Brewing Stand","color":"#6E0000","italic":false}'}

## Particles ##
execute if entity @s[predicate=vampire_pack:chance_30] if block ~ ~ ~ brewing_stand run particle minecraft:bubble_pop ~ ~0.6 ~ 0.2 0.2 0.2 0 1 force