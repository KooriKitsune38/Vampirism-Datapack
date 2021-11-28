#> v.pack:temple/temple_stage2

# Kills
kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{StageActivator:2}}},distance=..2]
kill @e[type=marker,tag=v.AnchorStand,distance=..4]
kill @e[type=marker,tag=v.templePart,distance=..4]

# Sounds & Particles ##
particle minecraft:warped_spore ~ ~2 ~ 0 0 0 1 1500 normal
particle minecraft:portal ~ ~1 ~ 0 0 0 10 200 normal
particle minecraft:white_ash ~ ~1 ~ 2 2 2 0.1 2500 normal
playsound minecraft:entity.blaze.death block @a ~ ~ ~ 0.5 0.9
playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 1 0.1
playsound minecraft:ambient.basalt_deltas.additions block @a
playsound minecraft:entity.wolf.howl block @a ~ ~ ~ 0.1 0.3
playsound minecraft:entity.ghast.death block @a ~ ~ ~ 0.5 0.5


# Setblocks ##
setblock ~ ~ ~ minecraft:chain
setblock ~ ~1 ~ minecraft:respawn_anchor[charges=2]
setblock ~1 ~ ~1 minecraft:netherrack
setblock ~-1 ~ ~1 minecraft:netherrack
setblock ~-1 ~ ~-1 minecraft:netherrack
setblock ~1 ~ ~-1 minecraft:netherrack
setblock ~2 ~ ~1 minecraft:polished_blackstone_bricks
setblock ~2 ~ ~-1 minecraft:polished_blackstone_bricks
setblock ~-2 ~ ~1 minecraft:polished_blackstone_bricks
setblock ~-2 ~ ~-1 minecraft:polished_blackstone_bricks
setblock ~1 ~ ~2 minecraft:polished_blackstone_bricks
setblock ~-1 ~ ~2 minecraft:polished_blackstone_bricks
setblock ~1 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~-1 ~ ~-2 minecraft:polished_blackstone_bricks
setblock ~2 ~ ~ minecraft:chiseled_polished_blackstone
setblock ~-2 ~ ~ minecraft:chiseled_polished_blackstone
setblock ~ ~ ~2 minecraft:chiseled_polished_blackstone
setblock ~ ~ ~-2 minecraft:chiseled_polished_blackstone

# Summons
#> Armor Stand
#summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["v.templePart"]}
#> v.Anchor
execute unless entity @e[tag=v.Anchor,type=villager,distance=..5] align xyz run summon villager ~0.5 ~.1 ~0.5 {id:"minecraft:villager",Tags:[v.Anchor,TempleStage2],CustomName:'{"text":"Vampire Temple"}',Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9999999,ShowParticles:0b}],VillagerData:{profession:"minecraft:none"},Offers:{Recipes:[{maxUses:1,buy:{id:"minecraft:gold_block",Count:4b},buyB:{id:"minecraft:wither_skeleton_skull",Count:4b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Infernal Demands"}',Lore:['{"text":"Embrace the darkness and"}','{"text":"listen to your deepest nightmares"}']},StageActivator:3}}}]}}

# Effects ##
tellraw @a[distance=..100] {"text":"The Corners Of Fire have risen from the darkness.","color":"#a94c4c","bold":true}
effect give @a[distance=..100,predicate=v.pack:player/is.vampire] minecraft:blindness 10 0

# Scoreboard
#scoreboard players set @e[tag=v.Anchor,distance=..3] tempcurrentstage 2

# Advancement ##
advancement grant @a[distance=..7] only v.pack:temple/corners_of_fire