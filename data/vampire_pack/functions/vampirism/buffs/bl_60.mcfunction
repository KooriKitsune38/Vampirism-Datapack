# Invisibility
#> If sneaking and light level 3
execute if predicate vampire_pack:player/is_sneaking if predicate vampire_pack:world/is_dark3 run function vampire_pack:vampirism/buffs/sneak_inv

# Speed
#> If sprinting and is night
execute if predicate vampire_pack:player/is_sprinting if predicate vampire_pack:world/speed_buff run effect give @s speed 1 1 true