#> v.pack:altar/as_glowstone

#> Glowstone errors
execute unless predicate v.pack:altar/altar_base run tag @s remove v.AltarErrorDisplayed
execute if predicate v.pack:altar/altar_base if entity @s[tag=!v.AltarErrorDisplayed] unless predicate v.pack:altar/light_requirement run function v.pack:altar/altar_error

#> Activation
execute if predicate v.pack:altar/altar_base if entity @s[type=item,nbt={Item:{Count:5b}}] if predicate v.pack:world/is_daytime if predicate v.pack:altar/light_requirement run function v.pack:altar/altar_activation