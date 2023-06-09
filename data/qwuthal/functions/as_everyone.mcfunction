#> qwuthal:as_everyone

execute unless entity @e[type=marker,tag=v.qwuthalPortal,distance=..1] run scoreboard players reset @s qwuthaltptimer

gamemode adventure @s[gamemode=!creative,gamemode=!spectator,predicate=qwuthal:world/in_qwuthal]

effect give @s[gamemode=!creative,gamemode=!spectator,predicate=qwuthal:world/in_qwuthal] blindness 2 0 true

execute if entity @s[nbt={Inventory:[{id:"minecraft:book",tag:{q.ExchangeBook:1b}}]}] run function qwuthal:dungeon/exchange_book

execute store result score .playerRot v.Values run data get entity @s Rotation[1]
execute if entity @s[predicate=qwuthal:player/is_sneaking] if score .playerRot v.Values matches ..-85 if entity @e[type=marker,tag=q.Start,distance=..1] run function qwuthal:dungeon/go_back

execute if entity @s[tag=q.Teleport] run function qwuthal:dungeon/place_player

execute if entity @s[tag=q.SetSurvival] run function qwuthal:dungeon/set_survival

tag @s[predicate=qwuthal:world/in_qwuthal] remove t.canTransform