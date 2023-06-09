#> qwuthal:library/lev.direction

execute as @e[type=armor_stand,tag=q.Levitating,tag=q.LevDown] run function qwuthal:library/lev.up
execute as @e[type=armor_stand,tag=q.Levitating,tag=q.LevUp,tag=!.temp] run function qwuthal:library/lev.down

tag @e[type=armor_stand,tag=.temp] remove .temp

tellraw @a[nbt={SelectedItem:{id:"minecraft:llama_spawn_egg",tag:{display:{Name:'{"text": "Levitator (Book Shelf)","italic":false,"color": "gold"}'}}}}] {"text": "----"}

schedule function qwuthal:library/lev.direction 1s replace