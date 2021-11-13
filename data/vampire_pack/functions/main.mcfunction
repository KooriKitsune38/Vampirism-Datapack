# As - at @s #
#> Everyone
execute as @a at @s run function vampire_pack:as_everyone 
#> Stands
execute as @e[type=armor_stand] at @s run function vampire_pack:as_stands
#> Anchors
execute as @e[type=villager,tag=Anchor] at @s run function vampire_pack:as_anchor
#> AECs
execute as @e[type=area_effect_cloud] at @s run function vampire_pack:as_aec

#> Bat
execute as @e[type=bat,tag=TransformationBat] at @s unless entity @a[distance=..1.2,predicate=vampire_pack:player/tag_vampire] run kill @s

#> Iron Golem attack nearby vampires/bats
execute as @e[type=iron_golem] at @s run data modify entity @s AngryAt set from entity @a[tag=!BatTransformed,limit=1,sort=nearest,distance=..10] UUID
execute as @e[type=iron_golem] at @s run data modify entity @s AngryAt set from entity @e[type=bat,tag=TransformationBat,limit=1,sort=nearest,distance=..10] UUID

# Wand Crafting
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}},distance=..1] run function vampire_pack:ritual/wand_craft

# Vampire Miscellanous
#> Vex don't hurt vampires
effect give @e[type=vex,predicate=vampire_pack:player/vex_targeting_player] weakness 1 255 true

#> Human eyes drop
execute as @e[type=witch] run data merge entity @s {DeathLootTable:"vampire_pack:witch_eyes"}
execute as @e[type=villager,tag=!Anchor] run data merge entity @s {DeathLootTable:"vampire_pack:human_eyes"}

# Temple Stages
#> Execute if throwing "corners of fire" paper on anchor
execute as @e[predicate=vampire_pack:world/in_nether,type=item,nbt={Item:{id:"minecraft:paper"}}] at @s run function vampire_pack:temple/as_activators

# Altar Activation
#> Glowstone errors
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},predicate=vampire_pack:world/in_overworld] at @s if predicate vampire_pack:altar/altar_base run function vampire_pack:altar/as_glowstone

# Qwuthal Dungeons
#execute in vampire_pack:qwuthal_dimension run function vampire_pack:qwuthal_dungeon/loop

#Reset Timer#
#execute as @a at @s unless entity @e[distance=..1.5,tag=QwuthalPortal] run scoreboard players reset @s qwuthaltptimer

#Trigger#
#scoreboard players enable @a QwuthalResetsIn
#execute as @a[scores={QwuthalResetsIn=1..}] at @s run function vampire_pack:qwuthal_dungeon/qwuthal_trigger