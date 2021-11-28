# Become Vampire
#> Sounds and stuff
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 0.1
particle minecraft:white_ash ~ ~1 ~ 2 2 2 0.1 2000 normal
particle minecraft:warped_spore ~ ~ ~ 0 0 0 1 1500 normal
particle dust 0.541 0.000 0.000 1 ~ ~ ~ 0.3 0.6 0.3 0.05 30 force

#> Effects
effect give @s blindness 15 0 true
effect give @s nausea 5 0 true

#> Tag and set stuff
tag @s add Vampire
tag @s add v.lvl1
scoreboard players set @s v.bloodL 60

#> Get advancementW
advancement grant @s only v.pack:vampirism/vampire_adv

#> Reset Timer
scoreboard players reset @s vampirismtimer

# Remove scoreboard
execute unless score * vampirismtimer matches -2147483648..2147483647 run scoreboard objectives remove vampirismtimer