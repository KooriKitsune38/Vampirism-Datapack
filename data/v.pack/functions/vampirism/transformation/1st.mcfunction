#> v.pack:vampirism/transformation/1st

#> Advise the player
execute if entity @s[scores={vampirismtimer=50}] run tellraw @s {"text":"You're starting to crave for blood.","color":"#e06060"}
#> Start sun weakness
execute if entity @s[scores={vampirismtimer=24000}] run tellraw @s {"text":"It feels like the sun is burning a little, but nothing lethal.","color":"#e06060"}
#> Start weakness
execute if entity @s[scores={vampirismtimer=30000}] run tellraw @s {"text":"The lack of blood makes you feel weak.","color":"#e06060"}
#> Start resistance in dark
execute if entity @s[scores={vampirismtimer=48000}] run tellraw @s {"text":"Standing in dark places makes you feel better","color":"#e06060"}
#> Start Iron Weakness
execute if entity @s[scores={vampirismtimer=60000}] run tellraw @s {"text":"Touching iron is like touching an incandescent pan.","color":"#e06060"}