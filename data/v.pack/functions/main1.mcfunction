# Heavy Selectors #
#> Everyone
execute as @a at @s run function v.pack:as_everyone

# Temple Stages
#execute as @e[predicate=v.pack:world/in_nether,type=item,nbt={Item:{id:"minecraft:paper"}}] at @s run function v.pack:temple/as_activators


# Qwuthal Dungeons
#execute in v.pack:qwuthal_dimension run function v.pack:qwuthal_dungeon/loop

#Reset Timer#
#execute as @a at @s unless entity @e[distance=..1.5,tag=v.qwuthalPortal] run scoreboard players reset @s qwuthaltptimer

#Trigger#
#scoreboard players enable @a QwuthalResetsIn
#execute as @a[scores={QwuthalResetsIn=1..}] at @s run function v.pack:qwuthal_dungeon/qwuthal_trigger