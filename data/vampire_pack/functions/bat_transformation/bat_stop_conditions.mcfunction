#> vampire_pack:bat_transformation/bat_stop_conditions

# Air
execute unless block ~ ~1 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop
execute unless block ~ ~1.5 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop
execute unless block ~ ~-.2 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop

#> If Entity
tag @s add .temp
execute if entity @e[type=!#vampire_pack:dont_target,tag=!.temp,distance=..001] run function vampire_pack:bat_transformation/bat_stop
#> If bat takes damage
scoreboard players operation .playerUUID vampiresUUIDs = @s vampiresUUIDs
execute as @e[type=minecraft:bat,tag=TransformationBat] if score @s vampiresUUIDs = .playerUUID vampiresUUIDs unless entity @s[nbt={HurtTime:0s}] as @a[tag=.temp] run function vampire_pack:bat_transformation/bat_stop
tag @s remove .temp

#> Flying Speed Exceeded
#execute if entity @s[tag=BatTransformed,scores={vampflyingspeed=400..}] run tellraw @s {"text":"You're going too fast!","color":"dark_red"}
#execute if entity @s[tag=BatTransformed,scores={vampflyingspeed=400..}] run function vampire_pack:bat_transformation/bat_stop
#> Transformation Cancelled
#execute if entity @s[tag=TransformationCancelled] run function vampire_pack:bat_transformation/bat_stop
#> If Bat isn't there anymore
#execute unless entity @e[type=bat,tag=TransformationBat,distance=..4] run function vampire_pack:bat_transformation/bat_stop