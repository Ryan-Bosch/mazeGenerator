# Take random direction (right or forward)
execute store result score mg_random mg_var run random value 0..1

# Deselect if both blocked
execute unless block ^ ^ ^1 white_wool unless block ^-1 ^ ^ white_wool run scoreboard players set mg_random mg_var 4

# Notify that exit is located (but not reached)
execute unless score mg_random mg_var matches 4 run scoreboard players set mg_exit mg_var 1

# Run forward if selected and not blocked
execute if score mg_random mg_var matches 0 positioned ^ ^ ^1 if block ~ ~ ~ white_wool run function z_internal_maze_generator:z_internal/handle_next

# Run right if selected and not blocked
execute if score mg_random mg_var matches 1 positioned ^-1 ^ ^ if block ~ ~ ~ white_wool run function z_internal_maze_generator:z_internal/handle_next

# Run forward if right selected and blocked
execute if score mg_random mg_var matches 1 positioned ^ ^ ^1 if block ~ ~ ~ white_wool run function z_internal_maze_generator:z_internal/handle_next