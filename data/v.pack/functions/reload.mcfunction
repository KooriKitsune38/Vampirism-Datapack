# Scoreboards
scoreboard objectives add v.Values dummy
scoreboard objectives add tradertimer dummy
scoreboard objectives add spoopytimer dummy
scoreboard objectives add templesoundtimer dummy
scoreboard objectives add vampirismtimer dummy
scoreboard objectives add brewingtimer dummy
scoreboard objectives add bloodtimer dummy
scoreboard objectives add brewuitimer dummy
scoreboard objectives add brewingcuritems dummy
scoreboard objectives add custbrewtime dummy
scoreboard objectives add vampiredead deathCount
scoreboard objectives add vampirekills dummy
scoreboard objectives add v.bloodL dummy
scoreboard objectives add vampfalldist dummy
scoreboard objectives add ritualhealth dummy
scoreboard objectives add vampiresUUIDs dummy
scoreboard objectives add batCancel dummy
scoreboard objectives add ToggleBat trigger
#scoreboard objectives add vampflyingspeed minecraft.custom:minecraft.fly_one_cm
#scoreboard objectives add daytimeerror dummy
#scoreboard objectives add overworlderror dummy
#scoreboard objectives add spaceerror dummy
#scoreboard objectives add brewingcurbot1 dummy
#scoreboard objectives add brewingcurbot2 dummy
#scoreboard objectives add brewingcurbot3 dummy
#scoreboard objectives add particlesposy dummy
#scoreboard objectives add tempcurrentstage dummy
#scoreboard objectives add altarerror dummy

## Qwuthal Dungeon Scoreboards
#scoreboard objectives add qwuthalrooms dummy
#scoreboard objectives add qwuthalnumgen dummy
#scoreboard objectives add qwuthaltptimer dummy
#scoreboard objectives add qwuthalreset dummy
#scoreboard objectives add QwuthalResetsIn trigger
#scoreboard objectives add qwuthalcalculate dummy
#scoreboard objectives add qwuthalminutes dummy
#scoreboard objectives add qwuthalseconds dummy
#scoreboard objectives add treebltimer dummy

# Default Values
#scoreboard players set cryobsdefvalue v.Values 4
#scoreboard players set !double qwuthalnumge 2
scoreboard players set .batEnabled v.Values 1
scoreboard players set .1 v.Values 1
scoreboard players set .7 v.Values 7
execute unless score .batVersion v.Values matches -2147483648..2147483647 run scoreboard players set .batVersion v.Values 0

#scoreboard players set #MinuteInSeconds qwuthalcalculate 60
#scoreboard players set #SecondInTick qwuthalcalculate 20

# Schedules
function v.pack:schedules/burn.schedule
function v.pack:schedules/a.sounds

## Tell it's loaded ##
tellraw @a [{"text":"[Vampirism Pack] ","color":"#bf3535","bold": true},{"text": "Reloaded!","color": "#e06060","italic": true,"bold": false}]
