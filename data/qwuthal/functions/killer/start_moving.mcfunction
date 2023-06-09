#> qwuthal:killer/start_moving

loot spawn ~ ~10 ~ loot qwuthal:killerdir

execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{Go:"right"}}}] rotated ~90 0 run function qwuthal:killer/killer_ray

execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{Go:"left"}}}] rotated ~-90 0 run function qwuthal:killer/killer_ray

execute if entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{Go:"forward"}}}] run function qwuthal:killer/killer_ray

kill @e[type=item,nbt={Item:{tag:{q.killerDir:1b}}}]