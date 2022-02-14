# Blood Levels #
#> 40+
execute if score @s v.bloodL matches 40.. run function v.pack:vampirism/buffs/bl_40

#> 60+
execute if score @s v.bloodL matches 60.. run function v.pack:vampirism/buffs/bl_60

#> 100+
execute if score @s v.bloodL matches 100.. run function v.pack:vampirism/buffs/bl_100

#> 110+
execute if score @s v.bloodL matches 110.. if predicate v.pack:world/is_dark1 run effect give @s night_vision 11 0 true