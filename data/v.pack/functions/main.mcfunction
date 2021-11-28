# As - at @s #
#> Everyone
execute as @a at @s run function v.pack:as_everyone 
#> Stands
execute as @e[type=marker] at @s run function v.pack:as_marker
#> v.Anchors
execute as @e[type=villager,tag=v.Anchor] at @s run function v.pack:as_anchor

#> Bat
execute as @e[type=bat,tag=t.bat] at @s run function v.pack:b.transf/kill.bat

#> Iron Golem attack nearby vampires/bats
execute as @e[type=iron_golem] at @s run data modify entity @s AngryAt set from entity @e[type=#v.pack:angery.golem,limit=1,sort=nearest,distance=..10] UUID

# Wand Crafting
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}},distance=..1] run function v.pack:ritual/wand_craft
# v.Altar Activation
#> Glowstone errors
execute as @e[type=item,nbt={Item:{id:"minecraft:glowstone"}},predicate=v.pack:world/in_overworld] at @s run function v.pack:altar/as_glowstone

# Vampire Miscellanous
#> Vex don't hurt vampires
effect give @e[type=vex,predicate=v.pack:player/vex_targeting_player] weakness 1 255 true

#> Human eyes drop
execute as @e[type=witch] run data merge entity @s {DeathLootTable:"v.pack:witch_eyes"}
execute as @e[type=villager,tag=!v.Anchor] run data merge entity @s {DeathLootTable:"v.pack:human_eyes"}

# Temple Stages
execute as @e[predicate=v.pack:world/in_nether,type=item,nbt={Item:{id:"minecraft:paper"}}] at @s run function v.pack:temple/as_activators

# Qwuthal Dungeons
#execute in v.pack:qwuthal_dimension run function v.pack:qwuthal_dungeon/loop

#Reset Timer#
#execute as @a at @s unless entity @e[distance=..1.5,tag=QwuthalPortal] run scoreboard players reset @s qwuthaltptimer

#Trigger#
#scoreboard players enable @a QwuthalResetsIn
#execute as @a[scores={QwuthalResetsIn=1..}] at @s run function v.pack:qwuthal_dungeon/qwuthal_trigger