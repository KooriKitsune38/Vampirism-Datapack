# Blood Levels #
#> 40+
execute if score @s bloodlevel matches 40.. run function vampire_pack:vampirism/buffs/bl_40

#> 60+
execute if score @s bloodlevel matches 60.. run function vampire_pack:vampirism/buffs/bl_60

#> 100+
execute if score @s bloodlevel matches 100.. run function vampire_pack:vampirism/buffs/bl_100

#> 110+
execute if score @s bloodlevel matches 110.. if predicate vampire_pack:world/is_dark1 run function vampire_pack:vampirism/buffs/bl_110