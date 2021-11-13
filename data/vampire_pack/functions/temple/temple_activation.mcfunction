#> vampire_pack:temple/temple_activation

setblock ~ ~-1 ~ minecraft:respawn_anchor[charges=1]

#> Summon armor stand with villager on it with netherrack trade
execute align xyz run summon villager ~0.5 ~-1.9 ~0.5 {Tags:[Anchor,TempleStage1],CustomName:'{"text":"Vampire Temple"}',Silent:1b,Invulnerable:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9999999,ShowParticles:0b},{Id:11b,Amplifier:127b,Duration:9999999,ShowParticles:0b}],VillagerData:{profession:"minecraft:none"},Offers:{Recipes:[{maxUses:1,buy:{id:"minecraft:netherrack",Count:4b},buyB:{id:"minecraft:polished_blackstone_bricks",Count:18b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Corners of Fire"}',Lore:['{"text":"Yelding the power requires the exposure"}','{"text":"of your greatest weakness."}']},StageActivator:2}}}]}}

#> Run stage 1
execute run execute as @e[distance=..2,type=villager,tag=Anchor] at @s align xyz positioned ~.5 ~1 ~.5 run function vampire_pack:temple/temple_stage1

#> Remove 4 Crying Obsidian
clear @s minecraft:crying_obsidian 4

#> Play sound
execute run playsound minecraft:block.bamboo.break block @a

#> Give Advancement
advancement grant @s only vampire_pack:temple/temple_stage1