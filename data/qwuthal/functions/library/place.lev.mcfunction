#> qwuthal:library/place.lev

execute if entity @s[tag=q.LevBook] run summon armor_stand ~.5 ~ ~.5 {Invisible:1b,NoGravity:1b,Small:1b,Tags:["q.Entity","q.Stand","q.Levitating","q.SpawnedEntity","q.LevUp"],Passengers:[{id:"minecraft:shulker",NoAI:1b,Silent:1b,DeathLootTable:"",active_effects:[{id:"minecraft:resistance",amplifier:127b,duration:999999,show_particles:false},{id:"minecraft:invisibility",amplifier:1b,duration:999999,show_particles:false}],NoGravity:1b,Tags:["q.Entity","q.BookShelf"]},{id:"minecraft:falling_block",Time:-999999,BlockState:{Name:"bookshelf"},Tags:["q.Entity"]}]}

kill @s

execute if predicate qwuthal:chance_50 as @e[type=armor_stand,distance=..1,tag=q.Levitating] run function qwuthal:library/lev.down