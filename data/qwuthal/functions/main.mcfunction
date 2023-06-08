execute as @e[type=marker] at @s run function qwuthal:as_marker

execute as @a at @s unless entity @e[type=marker,tag=v.qwuthalPortal,distance=..1] run scoreboard players reset @s qwuthaltptimer

scoreboard players add .qwuthalReset v.Values 1
execute if entity @a[predicate=qwuthal:world/in_qwuthal] if score .qwuthalReset v.Values matches 72000.. in qwuthal:qwuthal run function qwuthal:dungeon/reset_start

#execute at @a run fill ~-10 ~10 ~-10 ~10 ~-10 ~10 air