#> v.pack:temple/as_activators

#> Execute if throwing "corners of fire" paper on anchor
execute if entity @s[nbt={Item:{tag:{StageActivator:2}}}] as @e[distance=..2,tag=TempleStage1] at @s positioned ~ ~1 ~ run function v.pack:temple/temple_stage2

#> Execute if throwing "infernal demands" paper on anchor
execute if entity @s[nbt={Item:{tag:{StageActivator:3}}}] as @e[distance=..2,tag=TempleStage2] at @s positioned ~ ~1 ~ run function v.pack:temple/temple_stage3

#> Execute if throwing "final sacrifice" paper on anchor
execute if entity @s[nbt={Item:{tag:{StageActivator:4}}}] as @e[distance=..2,tag=TempleStage3] at @s positioned ~ ~1 ~ run function v.pack:temple/temple_stage4
