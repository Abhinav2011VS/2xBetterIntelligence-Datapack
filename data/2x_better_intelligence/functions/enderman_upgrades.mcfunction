# data/2x_better_intelligence/functions/enderman_upgrades.mcfunction

# Increase max health to 50 HP (25 hearts)
execute as @e[type=enderman,nbt={Health:40.0f}] run data modify entity @s Attributes[0].Base set value 50

# Spawn up to 3 reinforcements
execute as @e[type=enderman,nbt={ReinforcementCount:3}] run summon minecraft:enderman ~ ~ ~ {Health:40.0f,Attributes:[{Name:"minecraft:generic.max_health",Base:40}],PersistenceRequired:1}

# Check for water-filled cauldrons below the Enderman and apply damage
execute as @e[type=enderman] at @s if block ~ ~-1 ~ minecraft:water_cauldron[level=1] run damage @s minecraft:generic 1
execute as @e[type=enderman] at @s if block ~ ~-1 ~ minecraft:water_cauldron[level=2] run damage @s minecraft:generic 2
execute as @e[type=enderman] at @s if block ~ ~-1 ~ minecraft:water_cauldron[level=3] run damage @s minecraft:generic 3
