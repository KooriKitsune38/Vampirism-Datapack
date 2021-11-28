#> vampire_pack:bat_transformation/kill.bat

# Add tag
tag @s add .temp

# Search Player
scoreboard players operation .batUUID vampiresUUIDs = @s vampiresUUIDs
execute as @a[tag=Vampire] if score @s vampiresUUIDs = .batUUID vampiresUUIDs if entity @s[tag=!BatTransformed] run kill @e[type=bat,tag=.temp,distance=..2]

# Remove Tag
tag @s remove .temp