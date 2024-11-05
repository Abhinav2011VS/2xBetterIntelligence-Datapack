# data/2x_better_intelligence/functions/creeper_upgrades.mcfunction

# Increase max health to 25 HP (12.5 hearts)
execute as @e[type=creeper,nbt={Health:20.0f}] run data modify entity @s Attributes[0].Base set value 25

# Increased blast damage and random effects
execute as @e[type=creeper] if entity @s[nbt={OnGround:1b}] run data modify entity @s ExplosionRadius set value 5
