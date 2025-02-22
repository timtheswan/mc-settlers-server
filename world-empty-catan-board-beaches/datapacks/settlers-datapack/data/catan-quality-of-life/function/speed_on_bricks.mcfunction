# If a user is standing on brick, give them speed. 
execute as @a at @s if block ~ ~ ~ minecraft:dirt_path run effect give @s minecraft:speed 1 5 true
# Unlike dirt_path, a user standing on bricks isn't in the y level of that block, but the one above it
execute as @a at @s if block ~ ~-1 ~ minecraft:bricks run effect give @s minecraft:speed 1 5 true

# Otherwise, clear speed effect.
execute as @a at @s unless block ~ ~ ~ minecraft:dirt_path unless block ~ ~-1 ~ minecraft:bricks run effect clear @s minecraft:speed

