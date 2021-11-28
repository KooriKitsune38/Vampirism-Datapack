#> v.pack:altar/bottle_spawn
kill @s
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},limit=12,sort=nearest]
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ghast_tear"}},limit=1,sort=nearest]
kill @e[distance=..1,type=item,nbt={Item:{id:"minecraft:golden_apple"}},limit=1,sort=nearest]

execute align xyz positioned ~0.5 ~ ~0.5 run summon item ~ ~1 ~ {NoGravity:1b,CustomNameVisible:1b,CustomName:'{"text":"Sanctum Water Potion","color":"yellow","italic":false}',Item:{id:"minecraft:potion",Count:1b,tag:{HideFlags:32,display:{Name:'{"text":"Sanctum Water","color":"yellow","italic":false}',Lore:['{"text":"Drank by a human, it grants temporary powers."}','{"text":"It may cure or kill a vampire."}']},SanctumWater:1b,CustomPotionColor:10616812,Potion:"minecraft:mundane"}}}

execute run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 0.1 1.4