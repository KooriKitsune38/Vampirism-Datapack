#> v.pack:b.transf/bat_continue
# Increase bloodtimer
scoreboard players add @s[tag=t.transformed] bloodtimer 4

# Bat modes
#> 0 (Old bat spectator)
execute if score .batVersion v.Values matches 0 run function v.pack:b.transf/v0

# Stop Conditions
#> Air
execute unless block ~ ~1 ~ #v.pack:air run function v.pack:b.transf/bat_stop
execute unless block ~ ~1.5 ~ #v.pack:air run function v.pack:b.transf/bat_stop
execute unless block ~ ~-.2 ~ #v.pack:air run function v.pack:b.transf/bat_stop
#> If Entity
tag @s add .temp
execute if entity @e[type=!#v.pack:dont_target,tag=!.temp,distance=..001] run function v.pack:b.transf/bat_stop
#> If bat takes damage
scoreboard players operation .playerUUID vampiresUUIDs = @s vampiresUUIDs
execute as @e[type=minecraft:bat,tag=t.bat] if score @s vampiresUUIDs = .playerUUID vampiresUUIDs unless entity @s[nbt={HurtTime:0s}] as @a[tag=.temp] run function v.pack:b.transf/bat_stop
tag @s remove .temp
