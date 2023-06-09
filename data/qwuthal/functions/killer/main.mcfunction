#> qwuthal:killer/main

function qwuthal:killer/visuals
function qwuthal:killer/attack

execute if entity @s[tag=!q.KillerMoving] run function qwuthal:killer/start_moving

tag @s add .temp
execute as @e[type=marker,tag=q.KillerAnchor,distance=...2] if score @s vampiresUUIDs = @e[type=item_display,tag=q.Killer,tag=.temp,limit=1] vampiresUUIDs run function qwuthal:killer/detatch
tag @s remove .temp