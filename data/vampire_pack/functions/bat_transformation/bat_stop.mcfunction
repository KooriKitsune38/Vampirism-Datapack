#> vampire_pack:bat_transformation/bat_stop

# Tp upwards
tp @s ~ ~1 ~

# Set Gamemode to respective mode
execute store result score .gamemode v.Values run data get entity @s previousPlayerGameType

execute if score .gamemode v.Values matches 0 run gamemode survival @s
execute if score .gamemode v.Values matches 1 run gamemode creative @s
execute if score .gamemode v.Values matches 2 run gamemode adventure @s

# Give Resistance
effect give @s resistance 1 255 true

# Playsound
playsound entity.bat.takeoff player @a ~ ~ ~ 0.5 1.3

# Tagsw
tag @s remove BatTransformed
tag @s add TransformationCancelled