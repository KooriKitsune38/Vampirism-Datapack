#> v.pack:altar/altar_remove

setblock ~ ~-1 ~ quartz_pillar
execute at @s run particle minecraft:flame ~ ~-0.5 ~ 1 1 1 0.1 50 force
execute at @s run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 0.5 1.4
kill @s