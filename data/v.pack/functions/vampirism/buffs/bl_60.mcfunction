# Invisibility
#> If sneaking and light level 3
execute if predicate v.pack:player/is_sneaking if predicate v.pack:world/is_dark3 run function v.pack:vampirism/buffs/sneak_inv

# Speed
#> If sprinting and is night
execute if predicate v.pack:player/is_sprinting if predicate v.pack:world/speed_buff run effect give @s speed 1 1 true