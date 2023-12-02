#> v.pack:temple/temple_stage4

# Kills
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{StageActivator:4}}},distance=..2]
kill @e[type=marker,tag=v.AnchorStand,distance=..4]
kill @e[type=marker,tag=v.templePart,distance=..4]

# Sounds & Particles ##
particle minecraft:warped_spore ~ ~ ~ 0 0 0 1 1500 normal
particle minecraft:portal ~ ~1 ~ 0 0 0 10 200 normal
particle minecraft:white_ash ~ ~1 ~ 2 2 2 0.1 2500 normal
playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 1 0.1
playsound minecraft:ambient.soul_sand_valley.additions block @a ~ ~ ~ 0.5 0.8
playsound minecraft:ambient.soul_sand_valley.mood block @a ~ ~ ~ 0.5 0.1
playsound minecraft:particle.soul_escape block @a ~ ~ ~ 2
playsound minecraft:particle.soul_escape block @a ~ ~ ~ 2
playsound minecraft:entity.ghast.death block @a ~ ~ ~ 0.6 0.5
playsound minecraft:entity.ghast.death block @a ~ ~ ~ 0.6 0.1


# Enviromental Summons ##
execute positioned ~5 ~ ~-2 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~ ~ ~-9 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~5 ~ ~-8 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~7 ~ ~-3 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~-10 ~ ~1 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~1 ~ ~6 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~-3 ~ ~-7 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt

# Setblocks ##
setblock ~ ~1 ~ minecraft:respawn_anchor[charges=4]

setblock ~ ~3 ~2 minecraft:wither_skeleton_skull
setblock ~ ~3 ~-2 minecraft:wither_skeleton_skull
setblock ~2 ~2 ~ minecraft:wither_skeleton_skull
setblock ~-2 ~2 ~ minecraft:wither_skeleton_skull

setblock ~2 ~1 ~ minecraft:chain
setblock ~-2 ~1 ~ minecraft:chain
setblock ~ ~1 ~2 minecraft:chain
setblock ~ ~1 ~-2 minecraft:chain
setblock ~ ~2 ~2 minecraft:chain
setblock ~ ~2 ~-2 minecraft:chain

setblock ~ ~ ~ minecraft:chain
setblock ~ ~-1 ~ minecraft:chiseled_polished_blackstone

# Summons
#> Stands
summon marker ~ ~-1 ~ {Tags:["v.templePart4","v.templePart","ParticlesUp"]}
summon marker ~ ~-1 ~ {Tags:["v.templePart4b","v.templePart","ParticlesDown"]}
#> Villager
execute unless entity @e[tag=v.Anchor,type=villager,distance=..5] align xyz run summon villager ~0.5 ~ ~0.5 {id:"minecraft:villager",Tags:[v.Anchor,TempleStage4],CustomName:'{"text":"Vampire Temple"}',Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]}
#> Name Marker
summon area_effect_cloud ~ ~1.5 ~ {Tags:["v.templePart"],Age: -2147483648, Duration: -1, WaitTime: -2147483648,CustomName:'{"text":"Burn to Transform"}',CustomNameVisible:true}

## Effects ##
execute as @a[distance=..200] run tellraw @s {"text":"The Temple has reached its final form","color":"#6d3636","bold":true}
execute as @a[distance=..10] run title @s clear
execute as @a[distance=..10] unless entity @s[predicate=v.pack:player/is.vampire] run title @s title [{"text":"Embrace the ","color":"#700000","bold":true},{"text":"darkness!","color":"#700000","bold":true}]
execute as @a[distance=..10] unless entity @s[predicate=v.pack:player/is.vampire] run effect give @s minecraft:blindness infinite 0

## Timers ##
execute as @a[distance=..200] run scoreboard players reset @s spoopytimer
execute as @a[distance=..200] unless entity @s[predicate=v.pack:player/is.vampire] run scoreboard players add @s spoopytimer 1

#scoreboard players set @e[tag=v.Anchor,distance=..3] tempcurrentstage 4

weather thunder

## Advancements ##
execute as @a[distance=..7] run advancement grant @s only v.pack:temple/final_sacrifice