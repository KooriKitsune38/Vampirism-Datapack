title @s subtitle [{"text": "- Before Reset -","color": "#8F4265","bold": false}]
title @s title [{"score":{"name": "#qwuthal_minutes","objective": "qwuthalcalculate"},"color": "#8F2F45","bold": false},{"text": " : ","color": "#6C2031","bold": false},{"score":{"name": "#qwuthal_seconds","objective": "qwuthalcalculate"},"color": "#8F2F45","bold": false}]

execute if score #qwuthal_seconds qwuthalcalculate matches ..9 run title @s subtitle [{"text": "- Before Reset -","color": "#8F4265","bold": false}]
execute if score #qwuthal_seconds qwuthalcalculate matches ..9 run title @s title [{"score":{"name": "#qwuthal_minutes","objective": "qwuthalcalculate"},"color": "#8F2F45","bold": false},{"text": " : ","color": "#6C2031","bold": false},{"text": "0","color": "#8F2F45","bold": false},{"score":{"name": "#qwuthal_seconds","objective": "qwuthalcalculate"},"color": "#8F2F45","bold": false}]
playsound entity.bat.hurt master @s[scores={QwuthalResetsIn=1..}] ~ ~ ~ 0.05 2

scoreboard players reset @s QwuthalResetsIn