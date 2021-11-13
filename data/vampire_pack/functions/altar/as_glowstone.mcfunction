#> vampire_pack:altar/as_glowstone

#> Glowstone errors
execute unless predicate vampire_pack:altar/altar_base run tag @s remove AltarErrorDisplayed
execute if entity @s[tag=!AltarErrorDisplayed] unless predicate vampire_pack:altar/light_requirement run function vampire_pack:altar/altar_error

#> Activation
execute if entity @s[type=item,nbt={Item:{Count:5b}}] if predicate vampire_pack:world/is_daytime if predicate vampire_pack:altar/light_requirement run function vampire_pack:altar/altar_activation