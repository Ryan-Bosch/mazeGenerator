# mazeGenerator
Minecraft Datapack. An internal class to generate mazes. To be used by other Datapacks.

The 'Start' function should be used inside a block of white wool. The function will replace all of the white wool connected to that space with blue and black lines, forming a maze that can be read by any other datapack.
If 'Start' is not run from inside a white wool block, the function will return '0'.
