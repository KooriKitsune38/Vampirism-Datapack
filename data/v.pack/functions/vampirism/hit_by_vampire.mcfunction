#> v.pack:vampirism/hit_by_vampire

#> 3% of bleeding
execute if predicate v.pack:chance_03 run effect give @s instant_damage 1 0

#> Particles if hit
execute as @s[nbt={ActiveEffects:[{Id:7}]}] at @s run particle minecraft:dust 1 0 0 0.5 ~ ~1 ~ 0.3 0.5 0.3 1 30 force
execute as @s[nbt={ActiveEffects:[{Id:7}]}] at @s run particle minecraft:crit ~ ~1 ~ 0.3 0.5 0.3 0.1 10 force

#> 5% Of starting Vampire Transformation
execute as @s[predicate=v.pack:chance_05] run tag @s[predicate=!v.pack:player/is.vampire] add Vampirized

#> Start vampirism timer when vampirized
execute if entity @s[tag=Vampirized] run scoreboard players add @s vampirismtimer 1

#> Particles if vampirized
execute as @s[tag=Vampirized] at @s run playsound particle.soul_escape player @s ~ ~ ~ 2 0.7
execute as @s[tag=Vampirized] at @s run particle soul ~ ~0.5 ~ 0.3 0.3 0.3 0.3 20 force

#> Remove tag
execute as @s[tag=Vampirized] run tag @s remove Vampirized

#> Revoke ADV
execute as @s run advancement revoke @s only v.pack:damage/hit_by_vampire