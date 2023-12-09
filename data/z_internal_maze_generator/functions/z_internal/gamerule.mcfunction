gamerule maxCommandChainLength 1000000
gamerule maxCommandForkCount 1000000

tellraw @s {"text":"maxCommandChainLength and maxCommandForkCount are two low. Each has been increased. Please try again."}
scoreboard objectives remove mg_var