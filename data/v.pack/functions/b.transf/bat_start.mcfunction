#> v.pack:b.transf/bat_start

#> Tp a few blocks up
tp @s ~ ~ ~

# Give Advancement
advancement grant @s only v.pack:vampirism/bat_adv

# Mount Delay
execute if score .batVersion v.Values matches 1 run scoreboard players set @s mountBatDelay 20

# Bat
#> Summon
execute if entity @s[tag=!t.transformed] run summon bat ~ ~ ~ {Tags:[t.bat],active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:-1,show_particles:false}],Attributes:[{Name:"generic.movement_speed",Base:0}],NoAI:1b}
#> Transfer UUID
scoreboard players operation @e[type=bat,tag=t.bat,distance=..2,limit=1,sort=nearest] vampiresUUIDs = @s vampiresUUIDs

# Spectator
#> Set gamemode
execute if score .batVersion v.Values matches 0 run gamemode spectator @s

# Miscellanous
playsound entity.bat.takeoff player @a ~ ~ ~ 0.7 0.6
particle cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 15 normal

#> Tell it's transformed
tag @s add t.transformed