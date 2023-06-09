#> qwuthal:dungeon/exchange_book

execute store result score .booksInventory v.Values run clear @s book{q.ExchangeBook:1b}
summon item ~ ~.5 ~ {Tags:["q.ExchangeBook"],PickupDelay:3,Item:{id:"amethyst_shard",Count:1b,tag:{q.Key:true,display:{Name:'{"text":"Demonic Key","italic": false}',Lore:['{"text":"Throw this onto a locked object to open it!"}']}}}}
execute store result entity @e[type=item,tag=q.ExchangeBook,limit=1,sort=nearest] Item.Count byte 1 run scoreboard players get .booksInventory v.Values