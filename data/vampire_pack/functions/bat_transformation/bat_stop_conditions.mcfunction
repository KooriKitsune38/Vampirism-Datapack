#> vampire_pack:bat_transformation/bat_stop_conditions

# Air
execute unless block ~ ~1 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop
execute unless block ~ ~1.5 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop
execute unless block ~ ~-.2 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop
execute unless block ~ ~-.5 ~ #vampire_pack:air run function vampire_pack:bat_transformation/bat_stop

#> Transformation Cancelled
execute if entity @s[tag=TransformationCancelled] run function vampire_pack:bat_transformation/bat_stop
#> BL
execute if entity @s[scores={bloodlevel=..79}] run function vampire_pack:bat_transformation/bat_stop
#> Flying Speed Exceeded
#execute if entity @s[tag=BatTransformed,scores={vampflyingspeed=400..}] run tellraw @s {"text":"You're going too fast!","color":"dark_red"}
#execute if entity @s[tag=BatTransformed,scores={vampflyingspeed=400..}] run function vampire_pack:bat_transformation/bat_stop
#> If Entity
execute if entity @e[type=!#vampire_pack:dont_target,distance=..1] run function vampire_pack:bat_transformation/bat_stop

#> If Bat isn't there anymore
execute unless entity @e[type=bat,tag=TransformationBat,distance=..4] run function vampire_pack:bat_transformation/bat_stop