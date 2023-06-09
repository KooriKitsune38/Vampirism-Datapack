## Fuel ##
scoreboard players operation .brewFuel v.Values -= .7 v.Values
execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get .brewFuel v.Values

## Items ##

scoreboard players operation .brewItems v.Values -= .1 v.Values
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get .brewItems v.Values

## Bottles ##
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:potion",tag:{BloodBottle:1b}}] run item replace block ~ ~ ~ container.0 with potion{display: {Name: '{"text":"Enchanted Blood Bottle","italic":false,"color":"light_purple"}', Lore: ['{"text":"Restores 35 Blood Points.","color":"#bf3535"}']}, Enchantments: [{}], HideFlags: 35, EnchantedBloodBottle: 1b, CustomPotionColor: 13378339}

execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{BloodBottle:1b}}] run item replace block ~ ~ ~ container.1 with potion{display: {Name: '{"text":"Enchanted Blood Bottle","italic":false,"color":"light_purple"}', Lore: ['{"text":"Restores 35 Blood Points.","color":"#bf3535"}']}, Enchantments: [{}], HideFlags: 35, EnchantedBloodBottle: 1b, CustomPotionColor: 13378339}

execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:potion",tag:{BloodBottle:1b}}] run item replace block ~ ~ ~ container.2 with potion{display: {Name: '{"text":"Enchanted Blood Bottle","italic":true,"color":"light_purple"}', Lore: ['{"text":"Restores 35 Blood Points.","color":"#bf3535"}']}, Enchantments: [{}], HideFlags: 35, EnchantedBloodBottle: 1b, CustomPotionColor: 13378339}

playsound minecraft:block.brewing_stand.brew block @a