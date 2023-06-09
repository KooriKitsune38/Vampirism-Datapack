# Broken Temple
#> Center Stand
execute if entity @s[tag=v.bVampTemple] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=v.bVampTemple] positioned ~ ~0.5 ~ run function qwuthal:broken_temple/broken_center

# Sides
execute as @e[type=marker,tag=q.Side,limit=1,sort=random] at @s run function qwuthal:dungeon/sort_side

# Place Levitators
execute if entity @s[tag=q.PlaceLev] align xyz run function qwuthal:library/place.lev

# Library
execute if entity @s[tag=q.Library] run function qwuthal:library/library

# Gate
execute if entity @s[tag=q.Gate] if entity @e[type=item,nbt={Item:{tag:{q.Key:true}}},distance=..1.5] run function qwuthal:library/gate.open

# Book Shelf
execute if entity @s[tag=q.BookShelf] if block ~ ~ ~ chiseled_bookshelf run function qwuthal:dungeon/fill_shelf

# Anchor
execute if entity @s[tag=q.KillerAnchor] run function qwuthal:killer/as_anchor