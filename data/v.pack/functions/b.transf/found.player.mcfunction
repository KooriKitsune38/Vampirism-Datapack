#> v.pack:b.transf/found.player

# Kill Bat if doesn't exist player
execute if entity @s[tag=!t.transformed] run function v.pack:b.transf/kill.bat

# Bat Mode
#> 1 (Player tp to bat)
execute if score .batVersion v.Values matches 1 rotated as @s run function v.pack:b.transf/spectate.bat