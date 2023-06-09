#> qwuthal:killer/anchor

execute align xyz run summon marker ~.5 ~1.5 ~.5 {Tags:["q.KillerAnchor","q.Entity",".temp"]}

tag @s add .temp1
execute as @e[type=marker,tag=.temp] run function qwuthal:killer/anchor_uuid
tag @s remove .temp1

tag @s add q.KillerMoving