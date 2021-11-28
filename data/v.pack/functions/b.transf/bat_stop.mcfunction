#> v.pack:b.transf/bat_stop

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
playsound particle.soul_escape player @a ~ ~ ~ 2 1
playsound entity.enderman.teleport player @a ~ ~ ~ 1.5 .1
playsound entity.puffer_fish.blow_out player @a ~ ~ ~ .7 .5
playsound entity.puffer_fish.blow_out player @a ~ ~ ~ 1 1.5

# Tagsw
tag @s remove t.transformed
tag @s add t.Cancelled