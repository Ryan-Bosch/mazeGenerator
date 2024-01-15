# Check First Space
execute unless block ~ ~-1 ~ white_wool run return 0

# Scoreboards
scoreboard objectives add mg_var dummy

# Check maxCommandChainLength and maxCommandForkCount
execute store result score mg_gamerule mg_var run gamerule maxCommandChainLength
execute if score mg_gamerule mg_var matches 1000000.. store result score mg_gamerule mg_var run gamerule maxCommandForkCount
execute unless score mg_gamerule mg_var matches 1000000.. run schedule function z_internal_maze_generator:z_internal/gamerule 1
execute unless score mg_gamerule mg_var matches 1000000.. run return 1000000

# Rotate
execute store result score mg_rotation mg_var run data get entity @s Rotation[0]

# Mark current block
execute if block ~ ~-1 ~ white_wool run setblock ~ ~-1 ~ green_wool

# Next Block
execute if score mg_rotation mg_var matches ..45 rotated 0 0 align xz positioned ~.5 ~-1 ~.5 run function z_internal_maze_generator:z_internal/move_to_next
execute if score mg_rotation mg_var matches 46..135 rotated 90 0 align xz positioned ~.5 ~-1 ~.5 run function z_internal_maze_generator:z_internal/move_to_next
execute if score mg_rotation mg_var matches 136..225 rotated 180 0 align zx positioned ~.5 ~-1 ~.5 run function z_internal_maze_generator:z_internal/move_to_next
execute if score mg_rotation mg_var matches 226..315 rotated 270 0 align xz positioned ~.5 ~-1 ~.5 run function z_internal_maze_generator:z_internal/move_to_next
execute if score mg_rotation mg_var matches 316.. rotated 0 0 align xz positioned ~.5 ~-1 ~.5 run function z_internal_maze_generator:z_internal/move_to_next

# Remove Scoreboard
scoreboard objectives remove mg_var

