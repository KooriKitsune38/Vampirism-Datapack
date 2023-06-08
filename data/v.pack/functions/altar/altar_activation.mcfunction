#> v.pack:altar/altar_activation
kill @s
#kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=12,sort=nearest]
#kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ghast_tear"}},limit=1,sort=nearest]
#kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple"}},limit=1,sort=nearest]

## Activation ##
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[type=marker,tag=v.Altar,distance=..1] run summon minecraft:marker ~ ~ ~ {Tags: ["v.Altar"]}
setblock ~ ~-1 ~ glowstone

## Particles ##
particle totem_of_undying ~ ~ ~ 0 0 0 0.1 50 normal

## Sounds ##
playsound minecraft:block.beacon.activate block @a ~ ~ ~ 0.5 1.4

## Advancement ##
advancement grant @a[distance=..5] only v.pack:altar/altar_adv