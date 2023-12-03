# Timers
#> Blood Timer
scoreboard players add @s bloodtimer 1

# Vampire Buffs
## Always
#> Temple Buff
execute if entity @e[distance=..5,tag=v.Anchor,type=villager] run function v.pack:vampirism/buffs/temple_buff

#> Poison
effect clear @s poison

#> Fall Damage Removal
execute unless data entity @s {FallDistance:0.0f} store result score .tempFallDist v.Values run data get entity @s FallDistance 10
execute if score .tempFallDist v.Values matches 30.. run function v.pack:vampirism/buffs/fall_damage

#> BL 80+ (Bat Transformation)
#> Trigger
scoreboard players enable @s[scores={v.bloodL=80..}] ToggleBat
execute if entity @s[scores={ToggleBat=1..},tag=!t.canTransform] run function v.pack:b.transf/bat_trigger_on
execute if entity @s[scores={ToggleBat=1..},tag=t.canTransform] run function v.pack:b.transf/bat_trigger_off

execute if score @s v.bloodL matches 80.. if entity @s[tag=!t.Cancelled,tag=t.canTransform] run function v.pack:vampirism/buffs/bl_80
execute if entity @s[nbt={OnGround:1b}] run tag @s remove t.Cancelled
#> BL 79-
execute if score @s v.bloodL matches ..79 run function v.pack:b.transf/low.bl

## Oveworld Buffs
execute if predicate v.pack:world/in_overworld run function v.pack:vampirism/buffs/overworld_buffs

## Not Overworld Buffs
execute if predicate v.pack:world/in_nether_qwuthal run function v.pack:vampirism/buffs/nether_buffs

# Vampire Nerfs
#> Fire Damage
effect give @s[predicate=v.pack:player/on_fire] wither 2 0 true

#> Touching Iron
execute if score .ironDamage v.Values matches 1 run function v.pack:vampirism/iron_damage

#> If under_sunlight, has no fire resistance
execute unless entity @s[tag=t.transformed] if predicate v.pack:player/sunlight_exposure run function v.pack:vampirism/sunlight/sun_exposed
execute if predicate v.pack:world/in_overworld if predicate v.pack:player/under_sunlight run effect give @s weakness 1 0 true

# Player's Level
function v.pack:vampirism/bl/player_level

#> Blood Timer Reset
execute if score @s bloodtimer matches 600.. run function v.pack:vampirism/bl/remove_1bl

# Particles 
## display particles only other vampires can see
#> Overworld
execute if entity @s[predicate=v.pack:world/in_overworld,predicate=v.pack:chance_30] if predicate v.pack:world/is_nighttime run particle dust 0.541 0.000 0.000 1 ~ ~.5 ~ 0.3 0.6 0.3 0.05 1 force @a[predicate=v.pack:player/is.vampire]

#> Not Overworld
execute if entity @s[predicate=!v.pack:world/in_overworld,predicate=v.pack:chance_30] run particle dust 0.541 0.000 0.000 1 ~ ~.5 ~ 0.3 0.6 0.3 0.05 1 force @a[predicate=v.pack:player/is.vampire]

# Reset Scoreboards
scoreboard players reset .tempFallDist v.Values