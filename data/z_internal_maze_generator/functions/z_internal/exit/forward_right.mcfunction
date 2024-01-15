# Deselect if both blocked
execute unless block ^ ^ ^1 white_wool unless block ^-1 ^ ^ white_wool run return 4

# Take random direction (right or forward)
execute store result score mg_random mg_var run random value 0..1

# Notify that exit is located (but not reached)
scoreboard players set mg_exit mg_var 1

# Run forward if selected and not blocked
execute if score mg_random mg_var matches 0 positioned ^ ^ ^1 if block ~ ~ ~ white_wool run return run function z_internal_maze_generator:z_internal/handle_next

# Run right if selected and not blocked
execute if score mg_random mg_var matches 1 positioned ^-1 ^ ^ if block ~ ~ ~ white_wool run return run function z_internal_maze_generator:z_internal/handle_next

# Run forward if right selected and blocked
execute if score mg_random mg_var matches 1 positioned ^ ^ ^1 if block ~ ~ ~ white_wool run return run function z_internal_maze_generator:z_internal/handle_next