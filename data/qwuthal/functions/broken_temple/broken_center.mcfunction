tag @s[tag=!v.bTempleFailed,tag=!v.qwuthalPortal,predicate=qwuthal:chance_50] add v.qwuthalPortal
tag @s[tag=!v.qwuthalPortal] add v.bTempleFailed

## Qwuthal Portal ##
execute if entity @s[tag=v.qwuthalPortal] run function qwuthal:broken_temple/qwuthal_portal/qwuthal_portal_stuff

## Particles ##
particle white_ash ~ ~ ~ 4 2 4 1 5 normal
execute if entity @s[tag=v.bTempleFailed] run particle dust 0.925 0.894 0.82 1 ~ ~ ~ .1 .1 .1 1 5 normal
execute if entity @s[tag=v.bTempleFailed] run particle dust 0.918 0.694 0.925 1 ^ ^ ^1.2 0 0 0 1 1 normal

## Sounds ##
execute as @s[scores={templesoundtimer=1..}] run function qwuthal:sounds/temple_ambient
scoreboard players reset @s[tag=v.bTempleFailed] templesoundtimer

## Die if hellwand ##
execute if entity @a[distance=..1,predicate=qwuthal:temple/wand_on_hand,predicate=qwuthal:player/is_sneaking] run function qwuthal:broken_temple/broken_portal_remove