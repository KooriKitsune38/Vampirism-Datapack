## Fuel ##
scoreboard players operation @s brewingcurfuel -= !bloodbrewfuel v.Values
execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get @s brewingcurfuel

## Items ##
execute store result score @s brewingitems run scoreboard players operation @s brewingcuritems -= !minbrewingitem v.Values
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get @s brewingitems

## Bottles ##
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:glass_bottle"}] run replaceitem block ~ ~ ~ container.0 potion{display:{Name:'{"text":"Blood Bottle","italic":false}',Lore:['{"text":"Restores 20 Blood Points.","color":"dark_red"}']},HideFlags:32,BloodBottle:1b,CustomPotionColor:13378339,Potion:"minecraft:thick"}

execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:glass_bottle"}] run replaceitem block ~ ~ ~ container.1 potion{display:{Name:'{"text":"Blood Bottle","italic":false}',Lore:['{"text":"Restores 20 Blood Points.","color":"dark_red"}']},HideFlags:32,BloodBottle:1b,CustomPotionColor:13378339,Potion:"minecraft:thick"}

execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:glass_bottle"}] run replaceitem block ~ ~ ~ container.2 potion{display:{Name:'{"text":"Blood Bottle","italic":false}',Lore:['{"text":"Restores 20 Blood Points.","color":"dark_red"}']},HideFlags:32,BloodBottle:1b,CustomPotionColor:13378339,Potion:"minecraft:thick"}

playsound minecraft:block.brewing_stand.brew block @a