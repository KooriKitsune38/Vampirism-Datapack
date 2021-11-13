# Triggers
#> Bat
scoreboard players enable @s[scores={bloodlevel=80..}] EnableBat
execute as @s[scores={EnableBat=1..},tag=!BatTransformable] run function vampire_pack:bat_transformation/bat_trigger_on
execute as @s[scores={EnableBat=1..},tag=BatTransformable] run function vampire_pack:bat_transformation/bat_trigger_off

# Timers
#> Blood Timer
scoreboard players add @s bloodtimer 1

#> Touching Iron
execute positioned ~ ~-.25 ~ if predicate vampire_pack:player/touching_iron run scoreboard players add @s burnsoundtimer 1
execute if predicate vampire_pack:player/touching_iron positioned ~ ~-.25 ~ unless predicate vampire_pack:player/touching_iron run scoreboard players add @s burnsoundtimer 1

#> Unless touching iron, reset the burning score
execute unless predicate vampire_pack:player/touching_iron positioned ~ ~-.25 ~ unless predicate vampire_pack:player/touching_iron run function vampire_pack:vampirism/nerfs/burning_score_reset



# Vampire Buffs
## Always
#> Temple Buff
execute if entity @e[distance=..5,tag=Anchor,type=villager] run function vampire_pack:vampirism/buffs/temple_buff

#> Poison
effect clear @s poison

#> Fall Damage Removal
execute store result score @s vampfalldist run data get entity @s FallDistance 10
execute if score @s vampfalldist matches 30.. run function vampire_pack:vampirism/buffs/fall_damage

#> BL 80+ (Bat Transformation)
execute if score @s bloodlevel matches 80.. if entity @s[tag=!TransformationCancelled,tag=BatTransformable] run function vampire_pack:vampirism/buffs/bl_80

tag @s[nbt={OnGround:1b}] remove TransformationCancelled
execute as @s[tag=BatTransformed] run function vampire_pack:bat_transformation/bat_stop_conditions

scoreboard players reset @s vampflyingspeed

## Oveworld Buffs
execute if predicate vampire_pack:world/in_overworld run function vampire_pack:vampirism/buffs/overworld_buffs

## Not Overworld Buffs
execute unless predicate vampire_pack:world/in_overworld run function vampire_pack:vampirism/buffs/nether_buffs

# Vampire Nerfs
#> Fire Damage
execute if predicate vampire_pack:player/on_fire run function vampire_pack:vampirism/nerfs/fire_damage

#> Touching Iron
execute if predicate vampire_pack:player/touching_iron run function vampire_pack:vampirism/nerfs/touching_iron
execute positioned ~ ~-.25 ~ if predicate vampire_pack:player/touching_iron run function vampire_pack:vampirism/nerfs/touching_iron

#> Sunlight Weakness
execute if predicate vampire_pack:player/under_sunlight if predicate vampire_pack:world/in_overworld run effect give @s weakness 1 0 true

#> If under_sunlight, has no fire resistance
execute if predicate vampire_pack:player/sunlight_exposure run function vampire_pack:vampirism/sunlight/sun_exposed

#> Sunscreen & Helmet adv
execute as @s[predicate=vampire_pack:player/wearing_helmet,predicate=!vampire_pack:player/level15_light_exeptions,predicate=vampire_pack:player/under_sunlight] if predicate vampire_pack:world/is_daytime run advancement grant @s only vampire_pack:vampirism/helmet_adv
execute as @s[predicate=vampire_pack:player/fire_resistance,predicate=!vampire_pack:player/level15_light_exeptions,predicate=!vampire_pack:player/wearing_helmet,predicate=vampire_pack:player/under_sunlight] if predicate vampire_pack:world/is_daytime run advancement grant @s only vampire_pack:vampirism/sunscreen_adv

# Player's Level
execute if score @s vampirelvl matches 1.. run function vampire_pack:vampirism/blood_level/player_level

#> Blood Timer Reset
execute if score @s bloodtimer matches 600.. run function vampire_pack:vampirism/blood_level/remove_1bl

# Particles 
## display particles only other vampires can see
#> Overworld
execute if entity @s[predicate=vampire_pack:world/in_overworld,predicate=vampire_pack:chance_30] if predicate vampire_pack:world/is_nighttime run particle dust 0.541 0.000 0.000 1 ~ ~.5 ~ 0.3 0.6 0.3 0.05 1 force @a[predicate=vampire_pack:player/tag_vampire]

#> Not Overworld
execute as @s[predicate=!vampire_pack:world/in_overworld,predicate=vampire_pack:chance_30] run particle dust 0.541 0.000 0.000 1 ~ ~.5 ~ 0.3 0.6 0.3 0.05 1 force @a[predicate=vampire_pack:player/tag_vampire]