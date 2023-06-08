#> qwuthal:dungeon/reset_start

execute as @e[type=marker,tag=q.Center] at @s run function qwuthal:dungeon/clear_rooms

execute as @e[type=marker,tag=q.Offset,limit=1] at @s run function qwuthal:dungeon/gen_dungeon

tp @a[predicate=qwuthal:world/in_qwuthal] @e[type=marker,limit=1,tag=q.Start,sort=nearest]

scoreboard players reset .qwuthalReset