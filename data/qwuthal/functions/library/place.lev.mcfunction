#> qwuthal:library/place.lev

execute if entity @s[tag=q.LevBook] run summon armor_stand ~.5 ~ ~.5 {Invisible:1b,NoGravity:1b,Small:1b,Tags:["q.Entity","q.Stand","q.Levitating","q.SpawnedEntity","q.LevUp"],Passengers:[{id:"minecraft:shulker",NoAI:1b,Silent:1b,DeathLootTable:"",ActiveEffects:[{Id:11,Amplifier:127b,Duration:999999,ShowParticles:false},{Id:14,Amplifier:1b,Duration:999999,ShowParticles:false}],NoGravity:1b,Tags:["q.Entity","q.BookShelf"]},{id:"minecraft:falling_block",Time:-999999,BlockState:{Name:"bookshelf"},Tags:["q.Entity"]}]}

kill @s

execute if predicate qwuthal:chance_50 as @e[type=armor_stand,distance=..1,tag=q.Levitating] run function qwuthal:library/lev.down