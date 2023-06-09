scoreboard objectives add qwuthaltptimer dummy
scoreboard objectives add templesoundtimer dummy
scoreboard objectives add v.Values dummy

# Dungeon Offsetter
execute in qwuthal:qwuthal unless entity @e[type=marker,tag=q.Offset] run summon marker 0 5 0 {Tags:[q.Offset]}

# Levitator
schedule function qwuthal:library/lev.direction 1t replace

# Stalker
schedule function qwuthal:stalker/main45s 1t replace

# Values
scoreboard players set .1 v.Values 1
scoreboard players set .20 v.Values 20
scoreboard players set .60 v.Values 60

## Tell it's loaded ##
tellraw @a [{"text":"[Vampirism Pack] ","color":"#bf3535","bold": true},{"text": "Qwuthal Module Installed!","color": "#e06060","italic": true,"bold": false}]