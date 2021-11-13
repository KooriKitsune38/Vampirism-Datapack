# Brewing Blood
#> BrewingStand Stuff
execute if entity @s[tag=BrewingStand] run function vampire_pack:brewing_stand/brewing_stand

# Altar of Purification
execute if entity @s[tag=Altar,predicate=vampire_pack:world/in_overworld] run function vampire_pack:altar/altar_stuff
