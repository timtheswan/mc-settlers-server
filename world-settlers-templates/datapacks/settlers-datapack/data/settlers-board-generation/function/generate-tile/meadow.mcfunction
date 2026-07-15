# Example of a function calling a tile section with different positions

# Call part A (no transformation)
execute positioned ~ ~106 ~ run place template minecraft:tile-a-meadow

# Call part B (X - 47)
execute positioned ~-47 ~106 ~ run place template minecraft:tile-b-meadow

# Call part C (X - 47, Z - 47)
execute positioned ~-47 ~106 ~-47 run place template minecraft:tile-c-meadow

# Call part D (Z - 47)
execute positioned ~ ~106 ~-47 run place template minecraft:tile-d-meadow