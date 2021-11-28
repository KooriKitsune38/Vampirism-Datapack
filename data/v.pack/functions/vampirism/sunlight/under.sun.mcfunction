#> v.pack:vampirism/sunlight/under.sun

#> Sunlight Weakness
effect give @s weakness 1 0 true

#> Sunscreen & Helmet adv
execute if entity @s[predicate=v.pack:player/wearing_helmet,predicate=!v.pack:player/level15_light_exceptions] if predicate v.pack:world/is_daytime run advancement grant @s only v.pack:vampirism/helmet_adv
execute if entity @s[predicate=v.pack:player/fire_resistance,predicate=!v.pack:player/level15_light_exceptions,predicate=!v.pack:player/wearing_helmet] if predicate v.pack:world/is_daytime run advancement grant @s only v.pack:vampirism/sunscreen_adv