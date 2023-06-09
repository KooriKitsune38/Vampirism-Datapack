execute as @e[type=marker] at @s run function qwuthal:as_marker
execute as @e[type=armor_stand] at @s run function qwuthal:as_armor
execute as @e[type=shulker] at @s run function qwuthal:as_shulker
execute as @e[type=item_display,tag=q.Killer] at @s run function qwuthal:killer/main
execute as @e[type=item_display,tag=q.stalker] at @s run function qwuthal:stalker/item

execute as @a at @s run function qwuthal:as_everyone

scoreboard players remove .qwuthalReset v.Values 1

execute if entity @a[predicate=qwuthal:world/in_qwuthal] if score .qwuthalReset v.Values matches ..0 run scoreboard players add .qwuthalDelay v.Values 1
execute if score .qwuthalReset v.Values matches 0..210 run function qwuthal:dungeon/timer
execute if score .qwuthalDelay v.Values matches 60.. in qwuthal:qwuthal run function qwuthal:dungeon/reset_start


#execute at @a run fill ~-10 ~10 ~-10 ~10 ~-10 ~10 air