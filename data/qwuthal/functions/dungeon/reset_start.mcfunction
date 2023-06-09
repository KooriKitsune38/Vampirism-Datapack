#> qwuthal:dungeon/reset_start

execute as @e[type=marker,tag=q.Offset] positioned 0 10 0 run spreadplayers ~ ~ 50 100 false @s

execute as @e[type=marker,tag=q.Center] at @s run function qwuthal:dungeon/clear_rooms

kill @e[tag=q.Entity,tag=!q.Offset]
kill @e[type=item,predicate=qwuthal:world/in_qwuthal]
execute at @e[type=marker,tag=q.Offset,limit=1] positioned ~ 5 ~ run place structure qwuthal:dungeon ~ ~ ~

tp @a[predicate=qwuthal:world/in_qwuthal] @e[type=marker,limit=1,tag=q.Start,sort=nearest]

# Killer
function qwuthal:killer/summon_killer
function qwuthal:killer/summon_killer
function qwuthal:killer/summon_killer
function qwuthal:killer/summon_killer

scoreboard players set .qwuthalReset v.Values 24000
scoreboard players reset .qwuthalDelay v.Values