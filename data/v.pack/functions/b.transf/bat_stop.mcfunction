#> v.pack:b.transf/bat_stop

# Tp upwards
execute if block ~ ~1 ~ #v.pack:air if block ~ ~1.5 ~ #v.pack:air run tp @s ~ ~1.5 ~

# Set Gamemode to respective mode
execute store result score .gamemode v.Values run data get entity @s previousPlayerGameType

execute if score .gamemode v.Values matches 0 run gamemode survival @s
execute if score .gamemode v.Values matches 1 run gamemode creative @s
execute if score .gamemode v.Values matches 2 run gamemode adventure @s

# Effects
effect give @s resistance 1 255 true
effect clear @s levitation
effect clear @s slow_falling
effect clear @s invisibility

# Scoreboard
scoreboard players reset @s batCancel

# Playsound
playsound particle.soul_escape player @a ~ ~ ~ 2 1
playsound entity.enderman.teleport player @a ~ ~ ~ 1.5 .1
playsound entity.puffer_fish.blow_out player @a ~ ~ ~ .7 .5
playsound entity.puffer_fish.blow_out player @a ~ ~ ~ 1 1.5

# Tellrwa
execute if score @s v.bloodL matches ..79 run tellraw @s [{"text":"Low Blood Level!","color":"#bf3535"}]

# Tagsw
tag @s remove t.transformed
execute unless score .batAlwaysOn v.Values matches 1 run tag @s add t.Cancelled