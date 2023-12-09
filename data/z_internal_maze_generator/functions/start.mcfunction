# Increase command execution limit
gamerule maxCommandChainLength 100000
gamerule maxCommandForkCount 100000

# Check First Space
execute unless block ~ ~-1 ~ white_wool run return 0

# Scoreboards
scoreboard objectives add mg_var dummy

# Mark current block
execute if block ~ ~-1 ~ white_wool run setblock ~ ~-1 ~ green_wool

# Next Block
execute positioned ~ ~-1 ~ run function z_internal_maze_generator:z_internal/move_to_next

# Reset command execution limit
gamerule maxCommandChainLength 10000
gamerule maxCommandForkCount 10000