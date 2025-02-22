# If a user is standing on dirt_path, give them speed.
execute as @a at @s if block ~ ~ ~ minecraft:dirt_path run effect give @s minecraft:speed 1 5 true

# If a user is standing on bricks (one block lower check).
execute as @a at @s if block ~ ~-1 ~ minecraft:bricks run effect give @s minecraft:speed 1 5 true

# Otherwise, clear speed effect (checks both feet level and one block below to account for jumping).
execute as @a at @s unless block ~ ~ ~ minecraft:dirt_path unless block ~ ~-1 ~ minecraft:dirt_path unless block ~ ~-2 ~ minecraft:dirt_path unless block ~ ~-1 ~ minecraft:bricks unless block ~ ~-2 ~ minecraft:bricks run effect clear @s minecraft:speed