execute as @s[predicate=vampire_pack:player/is_sneaking,scores={vampfalldist=15..},tag=!BatTransformed] run function vampire_pack:bat_transformation/bat_start
execute as @s[tag=BatTransformed] run function vampire_pack:bat_transformation/bat_continue