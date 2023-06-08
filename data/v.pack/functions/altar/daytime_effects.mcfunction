#> v.pack:altar/daytime_effects
# Nerfs
effect give @a[distance=..5,predicate=v.pack:player/is.vampire,nbt=!{ActiveEffects:[{Id:17, Amplifier:0b}]}] hunger 5 1 true
effect give @a[distance=..5,predicate=v.pack:player/is.vampire] slowness 1 0 true
effect give @a[distance=..3,predicate=v.pack:player/is.vampire,nbt=!{ActiveEffects:[{Id:20, Amplifier:0b}]}] weakness 1 0 true

## - Potion - ##
execute as @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}},predicate=v.pack:altar/altar_base] at @s if block ~ ~-1 ~ glowstone if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust",Count:12b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if predicate v.pack:altar/light_requirement run function v.pack:altar/bottle_spawn