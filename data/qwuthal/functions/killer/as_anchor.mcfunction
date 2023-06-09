#> qwuthal:killer/as_anchor

tag @s add .temp
execute as @e[type=item_display,tag=q.KillerMoving] at @s if score @s vampiresUUIDs = @e[type=marker,tag=.temp,limit=1] vampiresUUIDs facing entity @e[type=marker,tag=.temp,limit=1] feet run tp ^ ^ ^.1

tag @s remove .temp