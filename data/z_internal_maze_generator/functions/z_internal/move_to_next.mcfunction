# Random
function z_internal_maze_generator:z_internal/chose_random_direction

# Move to new block
execute if score mg_random mg_var matches 0 positioned ^ ^ ^1 run return run function z_internal_maze_generator:z_internal/handle_next
execute if score mg_random mg_var matches 1 facing ^1 ^ ^ positioned ^ ^ ^1 run return run function z_internal_maze_generator:z_internal/handle_next
execute if score mg_random mg_var matches 2 facing ^-1 ^ ^ positioned ^ ^ ^1 run return run function z_internal_maze_generator:z_internal/handle_next

# Check for blocked off and backtrack
execute if score mg_random mg_var matches 4 run return run function z_internal_maze_generator:z_internal/backtrack