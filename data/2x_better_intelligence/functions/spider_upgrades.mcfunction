# data/2x_better_intelligence/functions/spider_upgrades.mcfunction

# Increase max health to 35 HP (17.5 hearts)
execute as @e[type=spider,nbt={Health:20.0f}] run data modify entity @s Attributes[0].Base set value 35

# Poison chance (50%)
execute as @e[type=spider] run scoreboard players set @s poison_chance 50
execute as @e[type=spider] if score @s poison_chance matches 50 run effect give @p minecraft:poison 5 0

# Jumping enhancement
execute as @e[type=spider] run effect give @s minecraft:jump_boost 99999 2 true
