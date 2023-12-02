#> v.pack:temple/trade/activate_stage2

# Remove Advancement
advancement revoke @s only v.pack:temple/trade_stage2

# Activate Stage 2 to nearby
execute as @e[distance=..6,tag=TempleStage1,nbt={Offers:{Recipes:[{uses:1}]}},limit=1,sort=nearest] at @s positioned ~ ~1 ~ run function v.pack:temple/temple_stage2