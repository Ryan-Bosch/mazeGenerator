# check diagonals
execute if block ^1 ^ ^1 yellow_wool run function z_internal_maze_generator:z_internal/exit/forward_left
execute if block ^-1 ^ ^1 yellow_wool run function z_internal_maze_generator:z_internal/exit/forward_right

# check forward
execute if block ^ ^ ^1 yellow_wool run function z_internal_maze_generator:z_internal/exit/forward