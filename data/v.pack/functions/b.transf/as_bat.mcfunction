#> v.pack:b.transf/as_bat

# Add tag
tag @s add .batTemp

data merge entity @s {Motion:[0d,0d,0d]}

# Apply Motion
execute if score .batVersion v.Values matches 1 run function v.pack:b.transf/v1.bat

# Search Player
scoreboard players operation .batUUID vampiresUUIDs = @s vampiresUUIDs
execute as @a[tag=Vampire] if score @s vampiresUUIDs = .batUUID vampiresUUIDs run function v.pack:b.transf/found.player

# Remove Tag
tag @s remove .batTemp