kill @e[type=bat,limit=1,sort=nearest,distance=..2,tag=TransformationBat]
tp @s ~ ~1 ~
gamemode survival @s
effect give @s resistance 1 255 true
playsound entity.bat.takeoff player @a ~ ~ ~ 0.5 1.3
tag @s remove BatTransformed
tag @s add TransformationCancelled