# Nether Buffs
#> Invisibility when sneaking
execute if predicate v.pack:player/is_sneaking run function v.pack:vampirism/buffs/sneak_inv

#> Speed when sprinting
execute if predicate v.pack:player/is_sprinting run effect give @s speed 1 1 true

#> Strenght and resistance and regeneration
effect give @s strength 1 0 true
effect give @s resistance 1 0 true
execute as @s[predicate=!v.pack:player/regeneration] run effect give @s regeneration 3 0 true