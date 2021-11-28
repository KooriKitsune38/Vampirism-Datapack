#> v.pack:temple/temple.req
# Crying Obsidian Check
#> Retrieve Count
execute store result score .cryobs v.Values run clear @s minecraft:crying_obsidian 0

# Errors
#> Needs to be in nether
execute if entity @s[tag=!t.errorDisp] unless predicate v.pack:world/in_nether run function v.pack:temple/temple_overworld_error
#> No crying obsidian
execute if entity @s[tag=!t.errorDisp] if score .cryobs v.Values matches ..3 if predicate v.pack:world/in_nether if predicate v.pack:temple/temple_space_check run function v.pack:temple/temple_cryingobsidian_missing_error
#> Tell the player that there must be space 6 blocks high and 3x3 horizontal
execute if entity @s[tag=!t.errorDisp] unless predicate v.pack:temple/temple_space_check run function v.pack:temple/temple_space_error

# If enough items in inventory and space
execute if score .cryobs v.Values matches 4.. if predicate v.pack:temple/temple_space_check if predicate v.pack:world/in_nether run function v.pack:temple/temple_activation