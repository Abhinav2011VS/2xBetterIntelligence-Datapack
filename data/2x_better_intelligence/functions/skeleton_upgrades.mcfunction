# data/2x_better_intelligence/functions/skeleton_upgrades.mcfunction

# Increase max health to 30 HP (15 hearts)
execute as @e[type=skeleton,nbt={Health:20.0f}] run data modify entity @s Attributes[0].Base set value 30

# Improved accuracy and effects
execute as @e[type=skeleton] if entity @s[nbt={OnGround:1b}] run effect give @s minecraft:strength 99999 0 true
execute as @e[type=skeleton] if entity @s[nbt={OnGround:1b}] run effect give @s minecraft:speed 99999 0 true

# Multi-shot volley
execute as @e[type=skeleton] at @s run function 2x_better_intelligence:skeleton_volley
