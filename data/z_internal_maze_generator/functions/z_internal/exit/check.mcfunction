# check forward
execute if block ^ ^ ^1 yellow_wool run function z_internal_maze_generator:z_internal/exit/forward

# check diagonals
execute unless score mg_exit mg_var matches 2 if block ^1 ^ ^1 yellow_wool run return run function z_internal_maze_generator:z_internal/exit/forward_left
execute unless score mg_exit mg_var matches 2 if block ^-1 ^ ^1 yellow_wool run return run function z_internal_maze_generator:z_internal/exit/forward_right

return run function z_internal_maze_generator:z_internal/move_to_next