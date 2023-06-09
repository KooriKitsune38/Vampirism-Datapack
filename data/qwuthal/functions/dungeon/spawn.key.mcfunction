#> qwuthal:dungeon/spawn.key

particle cloud ~ ~ ~ 0 0 0 1 5 force
playsound entity.puffer_fish.blow_up block @a ~ ~ ~ 1 1.5
summon item ~ ~ ~ {Item:{id:"amethyst_shard",Count:1b,tag:{Enchantments:[{}],q.Key:true,display:{Name:'{"text":"Demonic Key","italic": false}',Lore:['{"text":"Throw this onto a locked object to open it!"}']}}}}