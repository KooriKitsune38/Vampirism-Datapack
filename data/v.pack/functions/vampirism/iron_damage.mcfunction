#> v.pack:vampirism/iron_damage

# Touching
execute if predicate v.pack:player/touching_iron run function v.pack:vampirism/nerfs/touching_iron
execute positioned ~ ~-.25 ~ if predicate v.pack:player/touching_iron run function v.pack:vampirism/nerfs/touching_iron
