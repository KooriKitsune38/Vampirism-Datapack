#> v.pack:b.transf/bat_trigger_off

execute if entity @s[tag=t.transformed] run function v.pack:b.transf/bat_stop
tag @s remove t.canTransform
tellraw @s [{"text":"Bat Transformation","color":"#e06060"},{"text":" Disabled","color":"#a94c4c","bold":true}]

scoreboard players reset @s EnableBat