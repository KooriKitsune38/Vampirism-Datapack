# Levels
#> Level 1
execute if entity @s[tag=v.lvl1] run function v.pack:vampirism/bl/lvl1

#> Level 2
execute if entity @s[tag=v.lvl2] run function v.pack:vampirism/bl/lvl2

#> Level 3
execute if entity @s[tag=v.lvl3] run function v.pack:vampirism/bl/lvl3

#> Level 4
execute if entity @s[tag=v.lvl4] run function v.pack:vampirism/bl/lvl4

#> Level 5
execute if entity @s[tag=v.lvl5] run function v.pack:vampirism/bl/lvl5

#> Level 6
execute if entity @s[tag=v.lvl6] run function v.pack:vampirism/bl/lvl6

# Anemia
execute if entity @s[scores={v.bloodL=..10}] run effect give @s[nbt=!{active_effects:[{id:"minecraft:hunger", amplifier:1b}]}] hunger 5 1 true
execute if entity @s[scores={v.bloodL=..10}] run effect give @s weakness 5 1 true
execute if entity @s[scores={v.bloodL=..5}] run effect give @s slowness 1 0 true
execute if entity @s[scores={v.bloodL=..3}] run effect give @s slowness 1 1 true
execute if entity @s[scores={v.bloodL=..2}] run effect give @s slowness 1 2 true
execute if entity @s[scores={v.bloodL=..1}] run effect give @s instant_damage 1 0 true

#Leveling#
advancement grant @s[scores={vampirekills=120..},name="Looty20"] only v.pack:levelups/looty_level

# Death
execute if score @s vampiredead matches 1.. run function v.pack:vampirism/bl/death_reset