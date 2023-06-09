#> qwuthal:killer/summon_killer

summon item_display 0 50 0 {Tags:["q.Killer","q.Entity"],item_display:"fixed",item:{id:"minecraft:ender_eye",Count:1b},width:3f,height:3f}

execute as @e[type=item_display,tag=q.Killer] at @e[type=marker,tag=q.Start,limit=1,sort=nearest] at @e[type=marker,limit=1,sort=random,tag=!q.Start,tag=q.Center,distance=15..] run tp @s ~ ~2 ~ 90 0 

execute as @e[tag=q.Killer] store result score @s vampiresUUIDs run data get entity @s UUID[0]

tag @e[tag=q.Killer] remove q.KillerMoving