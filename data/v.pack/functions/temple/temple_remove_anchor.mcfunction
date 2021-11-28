# Summon Vexes
summon vex ~ ~ ~
#> Stage 2
execute if entity @s[tag=TempleStage2] run summon vex ~ ~ ~
#> Stage 3
execute if entity @s[tag=TempleStage3] run summon vex ~ ~ ~
execute if entity @s[tag=TempleStage3] run summon vex ~ ~ ~
execute if entity @s[tag=TempleStage3] run summon vex ~ ~ ~
#> Stage 4
execute if entity @s[tag=TempleStage4] run summon vex ~ ~ ~
execute if entity @s[tag=TempleStage4] run summon vex ~ ~ ~
execute if entity @s[tag=TempleStage4] run summon vex ~ ~ ~
execute if entity @s[tag=TempleStage4] run summon vex ~ ~ ~
execute if entity @s[tag=TempleStage4] run summon vex ~ ~ ~

# Fill fire
execute if entity @s[tag=TempleStage4] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace fire

# Kill Everything
kill @s
kill @e[type=marker,tag=v.AnchorStand,distance=..3]
kill @e[type=marker,tag=v.templePart,distance=..5]
kill @e[type=marker,tag=v.templePart4,distance=..5]
kill @e[type=marker,tag=v.templePart4b,distance=..5]

# Players Nearby
#> Sounds
stopsound @a[distance=..200]
execute at @a[distance=..7] run playsound minecraft:particle.soul_escape block @a ~ ~ ~ 2 0.3
execute at @a[distance=..7] run playsound minecraft:particle.soul_escape block @a ~ ~ ~ 2 2
execute at @a[distance=..7] run playsound minecraft:particle.soul_escape block @a ~ ~ ~ 2 1.7

#> Spoopy Timer
scoreboard players reset @a[distance=..7] spoopytimer

#> Effects
effect clear @a[distance=..200] minecraft:blindness
effect give @a[distance=..7] weakness 120 1
effect give @a[distance=..7,predicate=!v.pack:player/is.vampire] blindness 30 0
effect give @a[distance=..7] wither 10 0
effect give @a[distance=..7] nausea 20 0

#> Particles
particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal

## Advancements ##
advancement grant @a[distance=..7] only v.pack:temple/break_temple