#> vampire_pack:schedules/a.sounds

# Playsound
execute at @e[type=armor_stand,tag=Altar] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.3 2

# Schedule this back
schedule function vampire_pack:schedules/a.sounds 30s replace