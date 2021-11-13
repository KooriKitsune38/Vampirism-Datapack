#> vampire_pack:temple/temple_stage1

## Setblocks ##
setblock ~1 ~ ~ minecraft:crying_obsidian
setblock ~-1 ~ ~ minecraft:crying_obsidian
setblock ~ ~ ~1 minecraft:crying_obsidian
setblock ~ ~ ~-1 minecraft:crying_obsidian

## Particles & Sounds ##
particle minecraft:warped_spore ~ ~2 ~ 0 0 0 1 1500 normal
particle minecraft:portal ~ ~1 ~ 0 0 0 10 200 normal
particle minecraft:white_ash ~ ~1 ~ 2 2 2 0.1 2500 normal
playsound minecraft:entity.blaze.death block @a ~ ~ ~ 0.3 0.8
playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 1 0.1
playsound minecraft:ambient.basalt_deltas.additions block @a

#summon armor_stand ~ ~1 ~ {Marker:1b,Small:1b,Invisible:1b,Tags:["ArmorStandParticles"]}

## Effects ##
tellraw @a[distance=..50] {"text":"Vampire Ritual Initialized","color":"#BF8282","bold":true}
effect give @a[distance=..50,predicate=!vampire_pack:player/tag_vampire] minecraft:blindness 5 0

#> Add tag
#scoreboard players set @s tempcurrentstage 1