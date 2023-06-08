#> v.pack:temple/temple_stage3

# Kills
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{StageActivator:3}}},distance=..2]
kill @e[type=marker,tag=v.AnchorStand,distance=..4]
kill @e[type=marker,tag=v.templePart,distance=..4]

# Sounds & Particles ##
particle minecraft:warped_spore ~ ~2 ~ 0 0 0 1 1500 normal
particle minecraft:portal ~ ~1 ~ 0 0 0 10 200 normal
particle minecraft:white_ash ~ ~1 ~ 2 2 2 0.1 2500 normal
playsound minecraft:entity.blaze.death block @a ~ ~ ~ 0.7 1
playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 1 0.1
playsound minecraft:ambient.basalt_deltas.additions block @a
playsound minecraft:entity.ghast.death block @a ~ ~ ~ 0.5 0.5


## Enviromental Summons ##
execute positioned ~7 ~ ~-3 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~-10 ~ ~1 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt
execute positioned ~1 ~ ~6 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt 
execute positioned ~-3 ~ ~-7 unless entity @e[type=villager,distance=..5] run summon minecraft:lightning_bolt

## Setblocks ##
fill ~ ~ ~ ~ ~ ~ minecraft:respawn_anchor[charges=3] replace minecraft:respawn_anchor[charges=2]

execute positioned ~ ~2 ~ run setblock ~2 ~ ~ minecraft:wither_skeleton_skull
execute positioned ~ ~2 ~ run setblock ~-2 ~ ~ minecraft:wither_skeleton_skull
execute positioned ~ ~1 ~ run setblock ~ ~ ~2 minecraft:wither_skeleton_skull
execute positioned ~ ~1 ~ run setblock ~ ~ ~-2 minecraft:wither_skeleton_skull

execute positioned ~ ~1 ~ run setblock ~-2 ~ ~ minecraft:chain
execute positioned ~ ~1 ~ run setblock ~2 ~ ~ minecraft:chain
execute positioned ~ ~ ~ run setblock ~2 ~ ~ minecraft:chain
execute positioned ~ ~ ~ run setblock ~-2 ~ ~ minecraft:chain
execute positioned ~ ~ ~ run setblock ~ ~ ~2 minecraft:chain
execute positioned ~ ~ ~ run setblock ~ ~ ~-2 minecraft:chain

setblock ~2 ~-1 ~ minecraft:gold_block
setblock ~-2 ~-1 ~ minecraft:gold_block
setblock ~ ~-1 ~2 minecraft:gold_block
setblock ~ ~-1 ~-2 minecraft:gold_block

# Summons
#> Armor Stand
#summon marker ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["v.templePart"]}
#> Villager
execute unless entity @e[tag=v.Anchor,type=villager,distance=..5] align xyz run summon villager ~0.5 ~-.9 ~0.5 {id:"minecraft:villager",Tags:[v.Anchor,TempleStage3],CustomName:'{"text":"Vampire Temple"}',Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],VillagerData:{profession:"minecraft:none"},Offers:{Recipes:[{maxUses:1,buy:{id:"minecraft:nether_star",Count:1b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Final Sacrifice"}',Lore:['{"text":"Show that you can defeat the immortal creatures"}','{"text":"to embrace the darkness and leave the mortal world."}']},StageActivator:4}}}]}}

## Effects ##
tellraw @a[distance=..150] {"text":"The Darkness has ascended","color":"#924444","bold":true}
effect give @a[distance=..150,predicate=!v.pack:player/is.vampire] minecraft:blindness 20 0

## Advancements ##
execute as @a[distance=..7] run advancement grant @s only v.pack:temple/infernal_demands