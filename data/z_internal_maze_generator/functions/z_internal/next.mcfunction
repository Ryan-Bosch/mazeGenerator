# Random
execute store result score mg_random mg_var run random value 1..3

# Turn
execute store result score mg_result mg_var run function z_internal_maze_generator:z_internal/turn

# Mark Blockers

# Check for Exit