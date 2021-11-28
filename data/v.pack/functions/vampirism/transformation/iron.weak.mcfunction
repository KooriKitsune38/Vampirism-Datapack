#> v.pack:vampirism/transformation/iron.weak

execute positioned ~ ~-.25 ~ if predicate v.pack:player/touching_iron run effect give @s wither 2 0 true
execute positioned ~ ~-.25 ~ if predicate v.pack:player/touching_iron run particle minecraft:smoke ~ ~ ~ 0.3 0.1 0.3 0 1 force
execute positioned ~ ~ ~ if predicate v.pack:player/touching_iron run effect give @s wither 2 0 true
execute positioned ~ ~ ~ if predicate v.pack:player/touching_iron run particle minecraft:smoke ~ ~ ~ 0.3 0.1 0.3 0 1 force