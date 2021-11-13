#> vampire_pack:temple/temple_stage4

# Kills
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{StageActivator:4}}},distance=..2]
kill @e[type=armor_stand,tag=AnchorStand,distance=..4]
kill @e[type=armor_stand,tag=ArmorStandParticles,distance=..4]

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
summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["ArmorStandParticles4","ParticlesUp"]}
summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["ArmorStandParticles4b","ParticlesDown"]}
#> Villager
execute unless entity @e[tag=Anchor,type=villager,distance=..5] align xyz run summon villager ~0.5 ~ ~0.5 {id:"minecraft:villager",Tags:[Anchor,TempleStage4],CustomName:'{"text":"Vampire Temple"}',Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9999999,ShowParticles:0b}]}

## Effects ##
execute as @a[distance=..200] run tellraw @s {"text":"The temple is now complete","color":"#BF3434","bold":true}
execute as @a[distance=..10] run title @s clear
execute as @a[distance=..10] unless entity @s[predicate=vampire_pack:player/tag_vampire] run title @s title [{"text":"Now offer me your ","color":"#700000","bold":true},{"text":"soul!","color":"#700000","bold":true,"underlined":true}]
execute as @a[distance=..10] unless entity @s[predicate=vampire_pack:player/tag_vampire] run title @s subtitle {"text":"(Burn yourself to death)","color":"#823B3B","bold":true}
execute as @a[distance=..10] unless entity @s[predicate=vampire_pack:player/tag_vampire] run effect give @s minecraft:blindness 999999 0

## Timers ##
execute as @a[distance=..200] run scoreboard players reset @s spoopytimer
execute as @a[distance=..200] unless entity @s[predicate=vampire_pack:player/tag_vampire] run scoreboard players add @s spoopytimer 1

#scoreboard players set @e[tag=Anchor,distance=..3] tempcurrentstage 4

weather thunder

## Advancements ##
execute as @a[distance=..7] run advancement grant @s only vampire_pack:temple/final_sacrifice