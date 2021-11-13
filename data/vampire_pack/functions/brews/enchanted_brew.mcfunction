## Fuel ##
scoreboard players operation @s brewingcurfuel -= !bloodbrewfuel vampirismvalues
execute store result block ~ ~ ~ Fuel byte 1 run scoreboard players get @s brewingcurfuel

## Items ##
execute store result score @s brewingitems run scoreboard players operation @s brewingcuritems -= !minbrewingitem vampirismvalues
execute store result block ~ ~ ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get @s brewingitems

## Bottles ##
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:potion",tag:{BloodBottle:1b}}] run replaceitem block ~ ~ ~ container.0 potion{display:{Name:'{"text":"Enchanted Blood Bottle","italic":false,"color":"light_purple"}',Lore:['{"text":"Restores 35 Blood Points.","color":"dark_red"}']},Enchantments:[{}],HideFlags:32,EnchantedBloodBottle:1b,CustomPotionColor:13378339}

execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:potion",tag:{BloodBottle:1b}}] run replaceitem block ~ ~ ~ container.1 potion{display:{Name:'{"text":"Enchanted Blood Bottle","italic":false,"color":"light_purple"}',Lore:['{"text":"Restores 35 Blood Points.","color":"dark_red"}']},Enchantments:[{}],HideFlags:32,EnchantedBloodBottle:1b,CustomPotionColor:13378339}

execute if data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:potion",tag:{BloodBottle:1b}}] run replaceitem block ~ ~ ~ container.2 potion{display:{Name:'{"text":"Enchanted Blood Bottle","italic":true,"color":"light_purple"}',Lore:['{"text":"Restores 35 Blood Points.","color":"dark_red"}']},Enchantments:[{}],HideFlags:32,EnchantedBloodBottle:1b,CustomPotionColor:13378339}

playsound minecraft:block.brewing_stand.brew block @a