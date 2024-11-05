# data/2x_better_intelligence/functions/zombie_upgrades.mcfunction

# Increase max health to 40 HP (20 hearts)
execute as @e[type=zombie,nbt={Health:20.0f}] run data modify entity @s Attributes[0].Base set value 40

# Speed I at night
execute as @e[type=zombie] if entity @s[nbt={IsBaby:0b}] if time night run effect give @s minecraft:speed 99999 4 true

# Spawn reinforcements (up to 5) upon damage
execute as @e[type=zombie] at @s run summon minecraft:zombie ~ ~ ~ {Health:20.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:20}],PersistenceRequired:1}
