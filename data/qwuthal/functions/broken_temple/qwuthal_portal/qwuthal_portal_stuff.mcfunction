## Particles ##
particle dust 0.231 0.016 0.196 3 ~ ~ ~ .1 .1 .1 1 1 force
particle dust 0.565 0.455 0.639 1 ^ ^ ^1.2 .1 .1 .1 1 5 normal
execute if entity @s[predicate=qwuthal:chance_20] run particle end_rod ~ ~ ~ .15 .15 .15 0.02 2 force

## Sounds ##
scoreboard players add @s templesoundtimer 1

## Effecs ##
effect give @a[distance=..3] blindness 3 0 true

## Teleport ##
scoreboard players add @a[distance=..1.5] qwuthaltptimer 1
effect give @a[distance=..1.5] nausea 5 1 true
execute as @a[distance=..1.5] run particle portal ~ ~0.5 ~ 0.2 0.4 0.5 1 1 force
execute as @a[scores={qwuthaltptimer=100..}] run function qwuthal:broken_temple/qwuthal_portal/teleport_to_qwuthal