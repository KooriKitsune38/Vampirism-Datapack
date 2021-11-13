## Corner ##
execute if score random_number qwuthalnumgen matches 1 as @s[predicate=vampire_pack:chance_60] positioned ^ ^ ^-5 unless entity @e[tag=QwuthalCenter,distance=..5] unless entity @e[tag=4WaysCenter,distance=..8] positioned ^ ^ ^5 run function vampire_pack:qwuthal_dungeon/generators/corridors/corner_structure

## Corridor ##
execute if score random_number qwuthalnumgen matches 2 positioned ^ ^ ^-5 unless entity @e[tag=QwuthalCenter,distance=..5] unless entity @e[tag=4WaysCenter,distance=..8] positioned ^ ^ ^5 run function vampire_pack:qwuthal_dungeon/generators/corridors/corridor_structure

## Corridor with Common Loot ##
execute if score random_number qwuthalnumgen matches 3 as @s[predicate=vampire_pack:chance_20] positioned ^ ^ ^-5 unless entity @e[tag=QwuthalCenter,distance=..5] unless entity @e[tag=4WaysCenter,distance=..8] positioned ^ ^ ^5 run function vampire_pack:qwuthal_dungeon/generators/corridors/corridor_common_loot_structure

## 4 Ways ##
execute if score random_number qwuthalnumgen matches 4 as @s[predicate=vampire_pack:chance_30] positioned ^ ^ ^-5 unless entity @e[tag=QwuthalCenter,distance=..6] unless entity @e[tag=4WaysCenter,distance=..9] positioned ^ ^ ^5 run function vampire_pack:qwuthal_dungeon/generators/4ways/4ways_structure