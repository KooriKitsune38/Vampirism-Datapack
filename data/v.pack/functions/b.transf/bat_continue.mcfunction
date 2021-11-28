#> v.pack:b.transf/bat_continue
# Increase bloodtimer
scoreboard players add @s[tag=t.transformed] bloodtimer 4

# Tp bat
scoreboard players operation .batId v.Values = @s vampiresUUIDs
execute as @e[tag=t.bat] if score .batId v.Values = @s vampiresUUIDs positioned ~ ~.78 ~ run tp @s ^ ^ ^.2 ~ ~

# Stop Conditions
function v.pack:b.transf/bat_stop_conditions