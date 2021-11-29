#> v.pack:b.transf/bat_trigger_off

execute if entity @s[tag=!t.transformed] run function v.pack:b.transf/bat.trigger.norm
execute if entity @s[tag=t.transformed] run function v.pack:b.transf/bat.trigger.transf

scoreboard players reset @s EnableBat