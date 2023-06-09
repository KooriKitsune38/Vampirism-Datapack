#> qwuthal:library/book

# Sound & Particles
playsound block.enchantment_table.use block @a ~ ~ ~ 1 1.3
particle cloud ~ ~ ~ .2 .2 .2 0 5 force

# Ray Particle
execute facing entity @e[limit=1,sort=nearest,type=marker,tag=q.Library,distance=..10] eyes run function qwuthal:library/book.ray

# As Library
execute as @e[type=marker,tag=q.Library,distance=..10,sort=nearest] run function qwuthal:library/book.add1

# Kill
kill @e[tag=q.Entity,distance=..1.1]