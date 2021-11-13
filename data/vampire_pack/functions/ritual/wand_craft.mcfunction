kill @s
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b}},limit=1,sort=nearest]
execute at @s run particle minecraft:dust 0.769 0.153 0.635 1 ~ ~ ~ 0.5 0.1 0.5 1 100 normal
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 0.2 2
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:blaze_rod",Count:1b,tag:{display:{Name:'{"text":"Hell Wand","color":"#FF0000","italic":false}',Lore:['{"text":"Use this to do various spooky stuff."}']},HellWand:1b,Enchantments:[{}]}}}