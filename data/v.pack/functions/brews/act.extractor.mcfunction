#> v.pack:brews/act.extractor

# Summon marker
summon minecraft:marker ~ ~ ~ {Tags: ["v.brewStand"]}
execute if block ~ ~ ~ brewing_stand run data merge block ~ ~ ~ {CustomName:'{"text":"Blood Extractor","color":"#e06060","italic":false}'}

# Grant adv
advancement grant @s only v.pack:brews/stand_adv

# Playsound
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.2 2