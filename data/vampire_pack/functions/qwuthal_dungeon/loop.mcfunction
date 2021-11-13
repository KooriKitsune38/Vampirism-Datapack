## Generators ##
execute unless score room_count qwuthalrooms matches 50.. run function vampire_pack:qwuthal_dungeon/generators/generator_groups

## Max Rooms ##
execute if score room_count qwuthalrooms matches 50.. run function vampire_pack:qwuthal_dungeon/generators/max_rooms/max_rooms

## Make Centers Invisible ##
execute as @e[tag=QwuthalCenter] run data modify entity @s Invisible set value 1
## Clear Dungeon after days ##
scoreboard players remove #reset_timer qwuthalreset 1
execute as @a in vampire_pack:qwuthal_dimension at @s if score #reset_timer qwuthalreset matches 100 run function vampire_pack:qwuthal_dungeon/qwuthal_trigger
execute as @a in vampire_pack:qwuthal_dimension at @s if score #reset_timer qwuthalreset matches 80 run function vampire_pack:qwuthal_dungeon/qwuthal_trigger
execute as @a in vampire_pack:qwuthal_dimension at @s if score #reset_timer qwuthalreset matches 60 run function vampire_pack:qwuthal_dungeon/qwuthal_trigger
execute as @a in vampire_pack:qwuthal_dimension at @s if score #reset_timer qwuthalreset matches 40 run function vampire_pack:qwuthal_dungeon/qwuthal_trigger
execute as @a in vampire_pack:qwuthal_dimension at @s if score #reset_timer qwuthalreset matches 20 run function vampire_pack:qwuthal_dungeon/qwuthal_trigger
execute as @a in vampire_pack:qwuthal_dimension at @s if score #reset_timer qwuthalreset matches 1 run function vampire_pack:qwuthal_dungeon/qwuthal_trigger
execute if score #reset_timer qwuthalreset matches ..0 run function vampire_pack:qwuthal_dungeon/reset_dungeon


## Facings ##
#4ways#
execute as @e[tag=4WaysCenter] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,predicate=vampire_pack:qwuthal_dungeon/4ways/4ways_sides,distance=..5,sort=nearest]
execute as @e[predicate=vampire_pack:qwuthal_dungeon/4ways/4ways_sides] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,tag=4WaysCenter,distance=..5,sort=nearest]

#Corridor#
execute as @e[predicate=vampire_pack:qwuthal_dungeon/corridor/corridor_sides] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,tag=CorridorCenter,distance=..4,sort=nearest]
execute as @e[tag=CorridorCenter] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,predicate=vampire_pack:qwuthal_dungeon/corridor/corridor_sides,distance=..5,sort=nearest]

#Corner#
execute as @e[predicate=vampire_pack:qwuthal_dungeon/corner/corner_sides] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,tag=CornerCenter,distance=..4,sort=nearest]
execute as @e[tag=CornerCenter] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,predicate=vampire_pack:qwuthal_dungeon/corner/corner_sides,distance=..4,sort=nearest]

#Tree#
execute as @e[predicate=vampire_pack:qwuthal_dungeon/tree/tree_sides] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,tag=QwuthalTreeCenter,distance=..9,sort=nearest]
execute as @e[tag=QwuthalTreeCenter] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,predicate=vampire_pack:qwuthal_dungeon/tree/tree_sides,distance=..9,sort=nearest]

## Random Rooms ##
scoreboard players add random_number qwuthalnumgen 1
execute if score random_number qwuthalnumgen matches 6.. run scoreboard players set random_number qwuthalnumgen 1

## Reset Calculations ##
execute store result score #QwuthalResetTime qwuthalcalculate run scoreboard players get #reset_timer qwuthalreset
execute store result score #QwuthalSecondsAns qwuthalcalculate store result score #QwuthalSecondsAns2 qwuthalcalculate run scoreboard players operation #QwuthalResetTime qwuthalcalculate /= #SecondInTick qwuthalcalculate
execute store result score #qwuthal_minutes qwuthalcalculate run scoreboard players operation #QwuthalResetTime qwuthalcalculate /= #MinuteInSeconds qwuthalcalculate
execute store result score #qwuthal_seconds qwuthalcalculate run scoreboard players operation #QwuthalSecondsAns2 qwuthalcalculate %= #MinuteInSeconds qwuthalcalculate


## Players ##
gamemode adventure @a[gamemode=survival,predicate=vampire_pack:world/in_qwuthal]


## Room Effects ##
execute as @e[type=armor_stand,tag=QwuthalTreeCenter] at @s run function vampire_pack:qwuthal_dungeon/room_effects/tree_room/tree_stuff

## Stuff ##
#[QwuthalChests,QwuthalCommonLoot]