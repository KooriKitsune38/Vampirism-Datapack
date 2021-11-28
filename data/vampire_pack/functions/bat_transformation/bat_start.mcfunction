#> vampire_pack:bat_transformation/bat_start
#> Tp a few blocks up
tp @s ~ ~ ~

# Bat
#> Summon
execute if entity @s[tag=!BatTransformed] run summon bat ~ ~ ~ {NoAI:1b,Tags:[TransformationBat],ActiveEffects:[{Id:11b,Amplifier:127b,Duration:999999,ShowParticles:false}]}
#> Transfer UUID
execute store result score @e[type=bat,tag=TransformationBat,distance=..2,limit=1,sort=nearest] vampiresUUIDs run data get entity @s UUID[0]

# Spectator
#> Set gamemode
gamemode spectator @s

# Miscellanous
#> Stuff
playsound entity.bat.takeoff player @a ~ ~ ~ 0.7 0.6
particle cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 15 normal
#> Tell it's transformed
tag @s add BatTransformed