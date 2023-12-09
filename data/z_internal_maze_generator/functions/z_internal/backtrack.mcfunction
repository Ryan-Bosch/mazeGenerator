execute if block ~ ~ ~ green_wool run setblock ~ ~ ~ blue_wool

# We looked at this block
scoreboard players remove mg_random mg_var 1

# If the block in front isn't green and we haven't tried all 4 blocks yet, turn right and try again
execute unless block ^ ^ ^1 green_wool if score mg_random mg_var matches 1.. facing ^-1 ^ ^ run function z_internal_maze_generator:z_internal/backtrack

execute positioned ^ ^ ^1 if block ~ ~ ~ green_wool run function z_internal_maze_generator:z_internal/move_to_next