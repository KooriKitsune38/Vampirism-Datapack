#> v.pack:schedules/burn.schedule
# Check if burning
execute as @a[predicate=v.pack:player/is.vampire] at @s run function v.pack:schedules/burn.sound

# Schedule every 1 second
schedule function v.pack:schedules/burn.schedule 1s