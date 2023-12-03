#> v.pack:b.transf/mount_bat

scoreboard players remove @s mountBat 1

ride @s mount @e[type=bat,tag=.batTemp,limit=1,sort=nearest]

scoreboard players reset @s[scores={mountBat=..0}] mountBat