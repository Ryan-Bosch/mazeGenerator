# Stores a randomly selected number in scoreboard mg_random mg_var. 0 = forward, 1 = left, 2 = right, 4 = no valid direction

execute store result score mg_random mg_var run random value 0..2

execute unless block ^ ^ ^1 white_wool unless block ^-1 ^ ^ white_wool unless block ^1 ^ ^ white_wool run scoreboard players set mg_random mg_var 4

execute if score mg_random mg_var matches 0 unless block ^ ^ ^1 white_wool run function z_internal_maze_generator:z_internal/chose_random_direction

execute if score mg_random mg_var matches 1 unless block ^1 ^ ^ white_wool run function z_internal_maze_generator:z_internal/chose_random_direction

execute if score mg_random mg_var matches 2 unless block ^-1 ^ ^ white_wool run function z_internal_maze_generator:z_internal/chose_random_direction