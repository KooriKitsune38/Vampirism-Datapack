#> v.pack:vampirism/bl/remove_1bl

# Conditions
execute unless entity @s[gamemode=creative] run function v.pack:vampirism/bl/remove.1bl.conds

#> Set the bloodtimer back to 1
scoreboard players set @s bloodtimer 1 