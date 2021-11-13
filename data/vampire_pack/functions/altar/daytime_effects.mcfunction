# Nerfs
effect give @a[distance=..5,predicate=vampire_pack:player/tag_vampire,nbt=!{ActiveEffects:[{Id:17b, Amplifier:0b}]}] hunger 5 1 true
effect give @a[distance=..5,predicate=vampire_pack:player/tag_vampire] slowness 1 0 true
effect give @a[distance=..3,predicate=vampire_pack:player/tag_vampire,nbt=!{ActiveEffects:[{Id:20b, Amplifier:0b}]}] weakness 1 0 true

## - Potion - ##
execute as @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}}},predicate=vampire_pack:altar/altar_active] at @s if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust",Count:12b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if predicate vampire_pack:altar/light_requirement run function vampire_pack:altar/bottle_spawn