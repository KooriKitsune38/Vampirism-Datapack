#> v.pack:b.transf/v0

# Tp bat
scoreboard players operation .batId v.Values = @s vampiresUUIDs
execute as @e[tag=t.bat] if score .batId v.Values = @s vampiresUUIDs positioned ~ ~.78 ~ run tp @s ^ ^ ^.2 ~ ~