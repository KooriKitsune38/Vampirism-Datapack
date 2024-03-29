#> v.pack:temple/temple_activation

setblock ~ ~-1 ~ minecraft:respawn_anchor[charges=1]

#> Summon armor stand with villager on it with netherrack trade
execute align xyz run summon villager ~0.5 ~-1.9 ~0.5 {Tags:[v.Anchor,TempleStage1],CustomName:'{"text":"Vampire Temple"}',Silent:1b,Invulnerable:1b,NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:resistance",amplifier:127b,duration:-1,show_particles:0b}],VillagerData:{profession:"minecraft:none"},Offers:{Recipes:[{maxUses:1,buy:{id:"minecraft:netherrack",Count:4b},buyB:{id:"minecraft:polished_blackstone_bricks",Count:18b},sell:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"Corners of Fire"}',Lore:['{"text":"Yelding the power requires the exposure"}','{"text":"of your greatest weakness."}']},StageActivator:2}}}]}}

#> Run stage 1
execute run execute as @e[distance=..2,type=villager,tag=v.Anchor] at @s align xyz positioned ~.5 ~1 ~.5 run function v.pack:temple/temple_stage1

#> Remove 4 Crying Obsidian
clear @s minecraft:crying_obsidian 4

#> Play sound
execute run playsound minecraft:block.bamboo.break block @a

#> Give Advancement
advancement grant @s only v.pack:temple/temple_stage1