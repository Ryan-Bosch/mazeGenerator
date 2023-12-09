# Mark New Block
execute if block ~ ~ ~ white_wool run setblock ~ ~ ~ green_wool

# Mark Blocked paths (left, forward, and right respectively)
execute facing ^-1 ^ ^ positioned ^ ^ ^1 run function z_internal_maze_generator:z_internal/block
execute positioned ^ ^ ^1 run function z_internal_maze_generator:z_internal/block
execute facing ^1 ^ ^ positioned ^ ^ ^1 run function z_internal_maze_generator:z_internal/block

# Check for Exit (mg_exit = null if not found, 1 if located, 2 if reached)
execute if score mg_exit mg_var matches 1 run function z_internal_maze_generator:z_internal/exit/check_sides
execute unless score mg_exit mg_var matches 2 run function z_internal_maze_generator:z_internal/exit/check

# Next Block
function z_internal_maze_generator:z_internal/move_to_next

# Reset Random Block
scoreboard players reset mg_random mg_var