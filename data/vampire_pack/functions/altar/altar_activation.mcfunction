kill @s
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=12,sort=nearest]
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ghast_tear"}},limit=1,sort=nearest]
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple"}},limit=1,sort=nearest]

## Activation ##
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=area_effect_cloud,tag=Altar,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["Altar"]}
execute at @s run setblock ~ ~-1 ~ glowstone

## Particles ##
execute at @s run particle totem_of_undying ~ ~ ~ 0 0 0 0.1 50 normal

## Sounds ##
execute at @s run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 0.5 1.4

## Advancement ##
execute at @s run advancement grant @a[distance=..5] only vampire_pack:altar/altar_adv