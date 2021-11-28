#> vampire_pack:bat_transformation/bat_continue
# Increase bloodtimer
scoreboard players add @s[tag=BatTransformed] bloodtimer 4

# Tp bat
scoreboard players operation .batId v.Values = @s vampiresUUIDs
execute as @e[tag=TransformationBat] if score .batId v.Values = @s vampiresUUIDs positioned ~ ~.78 ~ run tp @s ^ ^ ^.2 ~ ~

function vampire_pack:bat_transformation/bat_stop_conditions