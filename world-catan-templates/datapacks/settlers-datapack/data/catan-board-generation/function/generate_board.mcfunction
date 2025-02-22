# generate_board.mcfunction
# This function generates the center tile and the first ring of surrounding tiles
# Run with 
# /execute positioned 0 0 0 run function catan-board-generation:generate_board

# Center Tile (0, 0)
function catan-board-generation:generate-tile/desert

# North Tile (0, -84)
execute positioned ~ ~ ~-84 run function catan-board-generation:generate-tile/fields

# Northeast Tile (72, -42)
execute positioned ~71 ~ ~-42 run function catan-board-generation:generate-tile/jungle

# Southeast Tile (72, 42)
execute positioned ~71 ~ ~42 run function catan-board-generation:generate-tile/meadow

# South Tile (0, 84)
execute positioned ~ ~ ~84 run function catan-board-generation:generate-tile/mesa

# Southwest Tile (-72, 42)
execute positioned ~-71 ~ ~42 run function catan-board-generation:generate-tile/mountains

# Northwest Tile (-72, -42)
execute positioned ~-71 ~ ~-42 run function catan-board-generation:generate-tile/jungle

# generate_board.mcfunction
# This function generates the center tile, the first ring, and the full third ring of surrounding tiles
# Run with:
# /execute positioned 0 0 0 run function catan-board-generation:generate_board

# Center Tile (0, 0)
function catan-board-generation:generate-tile/desert

# First Ring
# North Tile (0, -84)
execute positioned ~ ~ ~-84 run function catan-board-generation:generate-tile/fields

# Northeast Tile (72, -42)
execute positioned ~71 ~ ~-42 run function catan-board-generation:generate-tile/jungle

# Southeast Tile (72, 42)
execute positioned ~71 ~ ~42 run function catan-board-generation:generate-tile/meadow

# South Tile (0, 84)
execute positioned ~ ~ ~84 run function catan-board-generation:generate-tile/mesa

# Southwest Tile (-72, 42)
execute positioned ~-71 ~ ~42 run function catan-board-generation:generate-tile/mountains

# Northwest Tile (-72, -42)
execute positioned ~-71 ~ ~-42 run function catan-board-generation:generate-tile/jungle

# Third Ring (12 Tiles)
# North Tile (0, -168)
execute positioned ~ ~ ~-168 run function catan-board-generation:generate-tile/fields

# North-Northeast Tile (72, -126)
execute positioned ~71 ~ ~-126 run function catan-board-generation:generate-tile/mesa

# Northeast Tile (142, -84)
execute positioned ~142 ~ ~-84 run function catan-board-generation:generate-tile/jungle

# East-Northeast Tile (142, 0)
execute positioned ~142 ~ ~ run function catan-board-generation:generate-tile/meadow

# East-Southeast Tile (142, 84)
execute positioned ~142 ~ ~84 run function catan-board-generation:generate-tile/fields

# Southeast Tile (72, 126)
execute positioned ~71 ~ ~126 run function catan-board-generation:generate-tile/desert

# South Tile (0, 168)
execute positioned ~ ~ ~168 run function catan-board-generation:generate-tile/mountains

# South-Southwest Tile (-72, 126)
execute positioned ~-71 ~ ~126 run function catan-board-generation:generate-tile/jungle

# Southwest Tile (-142, 84)
execute positioned ~-142 ~ ~84 run function catan-board-generation:generate-tile/meadow

# West-Southwest Tile (-142, 0)
execute positioned ~-142 ~ ~ run function catan-board-generation:generate-tile/fields

# West-Northwest Tile (-142, -84)
execute positioned ~-142 ~ ~-84 run function catan-board-generation:generate-tile/desert

# Northwest Tile (-72, -126)
execute positioned ~-71 ~ ~-126 run function catan-board-generation:generate-tile/mountains