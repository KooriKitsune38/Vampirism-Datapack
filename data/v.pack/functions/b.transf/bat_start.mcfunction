#> v.pack:b.transf/bat_start
#> Tp a few blocks up
tp @s ~ ~ ~

# Bat
#> Summon
execute if entity @s[tag=!t.transformed] run summon bat ~ ~ ~ {Tags:[t.bat],ActiveEffects:[{Id:11b,Amplifier:127b,Duration:999999,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0}]}
#> Transfer UUID
scoreboard players operation @e[type=bat,tag=t.bat,distance=..2,limit=1,sort=nearest] vampiresUUIDs = @s vampiresUUIDs

# Spectator
#> Set gamemode
gamemode spectator @s

# Miscellanous
playsound entity.bat.takeoff player @a ~ ~ ~ 0.7 0.6
particle cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 15 normal

#> Tell it's transformed
tag @s add t.transformed