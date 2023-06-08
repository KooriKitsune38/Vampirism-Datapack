scoreboard objectives add qwuthaltptimer dummy
scoreboard objectives add templesoundtimer dummy
scoreboard objectives add v.Values dummy

# Dungeon Offsetter
execute in qwuthal:qwuthal unless entity @e[type=marker,tag=q.Offset] run summon marker 0 5 0 {Tags:[q.Offset]}

## Tell it's loaded ##
tellraw @a [{"text":"[Vampirism Pack] ","color":"#bf3535","bold": true},{"text": "Qwuthal Module Installed!","color": "#e06060","italic": true,"bold": false}]