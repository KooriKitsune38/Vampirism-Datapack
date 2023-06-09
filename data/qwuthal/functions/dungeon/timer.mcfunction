#> qwuthal:dungeon/timer

scoreboard players operation .seconds v.Values = .qwuthalReset v.Values
scoreboard players operation .seconds v.Values /= .20 v.Values

title @a[predicate=qwuthal:world/in_qwuthal] times 1t 1s 1s
title @a[predicate=qwuthal:world/in_qwuthal] title {"text": "Resetting In:","color":"#a94c4c"}
title @a[predicate=qwuthal:world/in_qwuthal] subtitle {"score":{"name": ".seconds","objective": "v.Values"},"color":"#a94c4c"}