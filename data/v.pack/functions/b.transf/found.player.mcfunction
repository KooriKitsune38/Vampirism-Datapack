#> v.pack:b.transf/found.player

# Kill Bat if doesn't exist player
execute if entity @s[tag=!t.transformed] run function v.pack:b.transf/kill.bat

# Transformed
execute if entity @s[tag=t.transformed] run function v.pack:b.transf/bat_continue