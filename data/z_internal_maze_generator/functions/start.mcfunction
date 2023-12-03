# Check First Space
execute unless block ~ ~ ~ white_wool run return 0

# Scoreboards
scoreboard objectives add mg_var dummy

# Summon Marker
summon block_display ~ ~ ~ {Tags:["mg_generator"]}

# Mark
execute if block ~ ~ ~ white_wool run setblock ~ ~ ~ green_wool

# Next Block
execute as @e[tag=mg_generator, limit=1, sort=nearest] at @s run function z_internal_maze_generator:z_internal/next