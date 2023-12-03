#> v.pack:b.transf/as_bat

# Add tag
tag @s add .batTemp

# Search Player
scoreboard players operation .batUUID vampiresUUIDs = @s vampiresUUIDs
execute as @a[tag=Vampire] if score @s vampiresUUIDs = .batUUID vampiresUUIDs run function v.pack:b.transf/found.player

# Remove Tag
tag @s remove .batTemp