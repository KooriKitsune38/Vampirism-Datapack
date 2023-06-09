#damage @s 3 minecraft:wither
playsound minecraft:entity.enderman.scream hostile @s ~ ~ ~ 1 .5
particle cloud ~ ~1 ~ .5 .5 .5 0 10
kill @e[type=item_display,limit=1,sort=nearest,tag=.this]