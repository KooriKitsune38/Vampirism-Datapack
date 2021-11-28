#> v.pack:schedules/a.sounds

# Playsound
execute at @e[type=marker,tag=v.Altar] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.3 2

# Schedule this back
schedule function v.pack:schedules/a.sounds 30s replace