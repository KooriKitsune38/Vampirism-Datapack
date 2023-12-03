#> v.pack:b.transf/bat.sneaking

# Effect
effect give @s levitation 1 255 true

# Timer
execute if entity @s[nbt={OnGround:1b}] unless score @s batCancel matches -2147483648..2147483647 run scoreboard players set @s batCancel 25