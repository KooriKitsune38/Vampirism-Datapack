#> vampire_pack:temple/temple_requirements
# Crying Obsidian Check
#> Retrieve Count
execute store result score .temp v.Values run clear @s minecraft:crying_obsidian 0

# Errors
#> Needs to be in nether
execute if entity @s[tag=!TempleErrorDisplayed] unless predicate vampire_pack:world/in_nether run function vampire_pack:temple/temple_overworld_error
#> No crying obsidian
execute if entity @s[tag=!TempleErrorDisplayed] if score .temp v.Values matches ..3 if predicate vampire_pack:world/in_nether if predicate vampire_pack:temple/temple_space_check run function vampire_pack:temple/temple_cryingobsidian_missing_error
#> Tell the player that there must be space 6 blocks high and 3x3 horizontal
execute if entity @s[tag=!TempleErrorDisplayed] unless predicate vampire_pack:temple/temple_space_check run function vampire_pack:temple/temple_space_error

# If enough items in inventory and space
execute if score .temp v.Values matches 4.. if predicate vampire_pack:temple/temple_space_check if predicate vampire_pack:world/in_nether run function vampire_pack:temple/temple_activation