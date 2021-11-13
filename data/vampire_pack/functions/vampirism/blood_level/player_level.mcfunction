# Levels
#> Level 1
execute if score @s vampirelvl matches 1 run function vampire_pack:vampirism/blood_level/level_1

#> Level 2
execute if score @s vampirelvl matches 2 run function vampire_pack:vampirism/blood_level/level_2

#> Level 3
execute if score @s vampirelvl matches 3 run function vampire_pack:vampirism/blood_level/level_3

#> Level 4
execute if score @s vampirelvl matches 4 run function vampire_pack:vampirism/blood_level/level_4

#> Level 5
execute if score @s vampirelvl matches 5 run function vampire_pack:vampirism/blood_level/level_5

#> Level 6
execute if score @s vampirelvl matches 6 run function vampire_pack:vampirism/blood_level/level_6

# Anemia
execute if entity @s[scores={bloodlevel=..10}] run effect give @s[nbt=!{ActiveEffects:[{Id:17b, Amplifier:1b}]}] hunger 5 1 true
execute if entity @s[scores={bloodlevel=..10}] run effect give @s weakness 5 1 true
execute if entity @s[scores={bloodlevel=..5}] run effect give @s slowness 1 0 true
execute if entity @s[scores={bloodlevel=..3}] run effect give @s slowness 1 1 true
execute if entity @s[scores={bloodlevel=..2}] run effect give @s slowness 1 2 true
execute if entity @s[scores={bloodlevel=..1}] run effect give @s instant_damage 1 0 true

#Leveling#
advancement grant @s[scores={vampirekills=10..}] only vampire_pack:levelups/level2
advancement grant @s[scores={vampirekills=25..}] only vampire_pack:levelups/level3
advancement grant @s[scores={vampirekills=60..}] only vampire_pack:levelups/level4
advancement grant @s[scores={vampirekills=110..}] only vampire_pack:levelups/level5
advancement grant @s[scores={vampirekills=120..},name="Looty20"] only vampire_pack:levelups/looty_level


# Death
execute if score @s vampiredead matches 1.. run function vampire_pack:vampirism/blood_level/death_reset