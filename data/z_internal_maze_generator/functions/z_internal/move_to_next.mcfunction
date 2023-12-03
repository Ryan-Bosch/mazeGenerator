# Random
function z_internal_maze_generator:z_internal/chose_random_direction

# Move to new block
execute if score mg_random mg_var matches 0 positioned ^ ^ ^1 run function z_internal_maze_generator:z_internal/handle_next

# Check for blocked off and backtrack
execute if score mg_random mg_var matches 4 run function z_internal_maze_generator:z_internal/backtrack