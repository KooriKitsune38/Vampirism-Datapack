#> v.pack:b.transf/old.stop.conditions

#> Air
execute unless block ~ ~1 ~ #v.pack:air run function v.pack:b.transf/bat_stop
execute unless block ~ ~1.5 ~ #v.pack:air run function v.pack:b.transf/bat_stop
execute unless block ~ ~-.2 ~ #v.pack:air run function v.pack:b.transf/bat_stop

#> If Entity
tag @s add .temp
execute if entity @e[type=!#v.pack:dont_target,tag=!.temp,distance=..001] run function v.pack:b.transf/bat_stop

#> Flying Speed Exceeded
#execute if entity @s[tag=t.transformed,scores={vampflyingspeed=400..}] run tellraw @s {"text":"You're going too fast!","color":"#bf3535"}
#execute if entity @s[tag=t.transformed,scores={vampflyingspeed=400..}] run function v.pack:b.transf/bat_stop
#> Transformation Cancelled
#execute if entity @s[tag=t.Cancelled] run function v.pack:b.transf/bat_stop
#> If Bat isn't there anymore
#execute unless entity @e[type=bat,tag=t.bat,distance=..4] run function v.pack:b.transf/bat_stop