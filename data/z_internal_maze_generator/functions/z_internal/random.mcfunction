execute store result score mg_random mg_var run random value 0..2

execute if score mg_random mg_var matches 0 unless block ^ ^ ^1 white_wool run function z_internal_maze_generator:z_internal/random

execute if score mg_random mg_var matches 1 unless block ^1 ^ ^ white_wool run function z_internal_maze_generator:z_internal/random

execute if score mg_random mg_var matches 2 unless block ^-1 ^ ^ white_wool run function z_internal_maze_generator:z_internal/random