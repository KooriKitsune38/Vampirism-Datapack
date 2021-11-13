# Vampiric Transformation
#> Advise the player
execute if entity @s[scores={vampirismtimer=50}] run tellraw @s {"text":"You're starting to crave for blood.","color":"red"}

#> Start sun weakness
execute if entity @s[scores={vampirismtimer=24000}] run tellraw @s {"text":"It feels like the sun is burning a little, but nothing lethal.","color":"red"}
execute if entity @s[scores={vampirismtimer=24000..}] if predicate vampire_pack:player/sunlight_exposure run effect give @s nausea 5 0 true

#> Start weakness
execute if entity @s[scores={vampirismtimer=30000}] run tellraw @s {"text":"The lack of blood makes you feel weak.","color":"red"}
execute if entity @s[scores={vampirismtimer=30000..}] run effect give @s weakness 1 0 true

#> Start vampire particles
execute if entity @s[scores={vampirismtimer=30000..},predicate=vampire_pack:chance_03] run particle minecraft:falling_dust redstone_wire ~ ~1 ~ 0.3 0.7 0.3 1 10 force

#> Start resistance in dark
execute if entity @s[scores={vampirismtimer=48000}] run tellraw @s {"text":"Standing in dark places makes you feel better","color":"red"}
execute if entity @s[scores={vampirismtimer=48000..}] if predicate vampire_pack:world/is_dark1 run effect give @s resistance 1 0 true

#> Start Iron Weakness
execute if entity @s[scores={vampirismtimer=60000}] run tellraw @s {"text":"Touching iron is like touching an incandescent pan.","color":"red"}
execute if entity @s[scores={vampirismtimer=60000..}] positioned ~ ~-.25 ~ if predicate vampire_pack:player/touching_iron run effect give @s wither 2 0 true
execute if entity @s[scores={vampirismtimer=60000..}] positioned ~ ~-.25 ~ if predicate vampire_pack:player/touching_iron run particle minecraft:smoke ~ ~ ~ 0.3 0.1 0.3 0 1 force
execute if entity @s[scores={vampirismtimer=60000..}] positioned ~ ~ ~ if predicate vampire_pack:player/touching_iron run effect give @s wither 2 0 true
execute if entity @s[scores={vampirismtimer=60000..}] positioned ~ ~ ~ if predicate vampire_pack:player/touching_iron run particle minecraft:smoke ~ ~ ~ 0.3 0.1 0.3 0 1 force

#> Start Voices
execute if entity @s[scores={vampirismtimer=71000}] run tellraw @s {"text":"Your stomach hurts and strange voices are getting louder.","color":"red"}
execute if entity @s[scores={vampirismtimer=71000}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 1
execute if entity @s[scores={vampirismtimer=71020}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 1
execute if entity @s[scores={vampirismtimer=71060}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 1
execute if entity @s[scores={vampirismtimer=71100}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2 1
execute if entity @s[scores={vampirismtimer=71500}] run playsound minecraft:entity.fox.screech master @s ~ ~ ~ 1 0.1
execute if entity @s[scores={vampirismtimer=71800}] run playsound minecraft:entity.fox.screech master @s ~ ~ ~ 1 1.3
execute if entity @s[scores={vampirismtimer=71850}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1
execute if entity @s[scores={vampirismtimer=71880}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 0.2
execute if entity @s[scores={vampirismtimer=71900}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 0.4
execute if entity @s[scores={vampirismtimer=71920}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 0.6
execute if entity @s[scores={vampirismtimer=71940}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1
execute if entity @s[scores={vampirismtimer=71960}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1.2
execute if entity @s[scores={vampirismtimer=71980}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1.4
execute if entity @s[scores={vampirismtimer=72000}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 1.6
execute if entity @s[scores={vampirismtimer=72020}] run playsound minecraft:particle.soul_escape master @s ~ ~ ~ 2

#> End of it
execute if score @s vampirismtimer matches 72100.. run function vampire_pack:vampirism/transformation/become_vampire


## - Maybe add a hex from dark to bright - ##
execute if entity @s[scores={vampirismtimer=71900}] run title @s actionbar {"text":"I'm Hearing Voices...","color":"red"}
execute if entity @s[scores={vampirismtimer=71960}] run title @s actionbar {"text":"What's happening?","color":"red"}
execute if entity @s[scores={vampirismtimer=72000}] run title @s actionbar {"text":"They're getting louder!","color":"red"}
execute if entity @s[scores={vampirismtimer=72040}] run title @s actionbar {"text":"Am I going to die?","color":"red","bold":true}