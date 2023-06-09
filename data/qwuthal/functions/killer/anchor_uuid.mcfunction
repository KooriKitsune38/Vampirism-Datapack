#> qwuthal:killer/anchor_uuid

execute store result score @s vampiresUUIDs run scoreboard players get @e[type=item_display,tag=.temp1,limit=1,sort=nearest] vampiresUUIDs
tag @s remove .temp