#> qwuthal:killer/killer_ray

execute at @e[type=marker,tag=q.Center,limit=1,sort=random,distance=..3] unless entity @e[type=item_display,tag=q.Killer,distance=..5] run function qwuthal:killer/anchor

execute unless block ^ ^ ^.1 #qwuthal:killer if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{Go:"forward"}}}] at @s rotated ~90 0 run tp ~ ~ ~

execute unless entity @s[tag=q.KillerMoving] if block ^ ^ ^.1 #qwuthal:killer positioned ^ ^ ^.1 run function qwuthal:killer/killer_ray