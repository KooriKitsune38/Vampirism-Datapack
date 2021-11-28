## Fuel ##
scoreboard players operation .brewFuel v.Values -= .7 v.Values
execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get .brewFuel v.Values

## Items ##
scoreboard players operation .brewItems v.Values -= .1 v.Values
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get .brewItems v.Values

## Bottles ##
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:glass_bottle"}] run item replace block ~ ~ ~ container.0 with potion{display: {Name: '{"text":"Blood Bottle","italic":false}', Lore: ['{"text":"Restores 20 Blood Points.","color":"#bf3535"}']}, HideFlags: 32, BloodBottle: 1b, CustomPotionColor: 13378339, Potion: "minecraft:thick"}

execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:glass_bottle"}] run item replace block ~ ~ ~ container.1 with potion{display: {Name: '{"text":"Blood Bottle","italic":false}', Lore: ['{"text":"Restores 20 Blood Points.","color":"#bf3535"}']}, HideFlags: 32, BloodBottle: 1b, CustomPotionColor: 13378339, Potion: "minecraft:thick"}

execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:glass_bottle"}] run item replace block ~ ~ ~ container.2 with potion{display: {Name: '{"text":"Blood Bottle","italic":false}', Lore: ['{"text":"Restores 20 Blood Points.","color":"#bf3535"}']}, HideFlags: 32, BloodBottle: 1b, CustomPotionColor: 13378339, Potion: "minecraft:thick"}

playsound minecraft:block.brewing_stand.brew block @a