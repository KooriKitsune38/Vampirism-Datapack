tag @s add .this
execute as @p[gamemode=!spectator,gamemode=!creative] at @s anchored eyes run function qwuthal:stalker/itemray
execute positioned ~ ~-1 ~ as @a[distance=..1,gamemode=!spectator,gamemode=!creative] run function qwuthal:stalker/scared
tag @s remove .this 