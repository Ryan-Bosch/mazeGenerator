# Check First Space
execute unless block ~ ~-1 ~ white_wool run return 0

# Scoreboards
scoreboard objectives add mg_var dummy

# Check maxCommandChainLength and maxCommandForkCount
execute store result score mg_gamerule mg_var run gamerule maxCommandChainLength
execute if score mg_gamerule mg_var matches 1000000.. store result score mg_gamerule mg_var run gamerule maxCommandForkCount
execute unless score mg_gamerule mg_var matches 1000000.. run schedule function z_internal_maze_generator:z_internal/gamerule 1
execute unless score mg_gamerule mg_var matches 1000000.. run return 1000000

# Mark current block
setblock ~ ~-1 ~ green_wool

# Next Block
execute align xz positioned ~.5 ~-1 ~.5 run function z_internal_maze_generator:z_internal/move_to_next

# Remove Scoreboard
scoreboard objectives remove mg_var