# Building a Tic Tac Toe Turn

## Outline

1. This is a CLI lab to build a single realistic looking turn of tic tac toe.
2. Overview. Describe the program - show it working. 
3. Objectives.
4. Instructions

They should first focus on the required methods to be defined in tic_tac_toe.rb.
1. display_board
2. move
3. position_taken?
4. valid_move?
5. Then build the turn method with the help of the runner and the test suite.

Simple tests for 1-4 tell them they can use old solutions or reimplement.

Building a turn.
define turn compisition.
A turn is composed of a:

1. Display of the Board
2. A prompt for user input
3. A validation of the move.
4. If invalid, ask for input again.
5. If valid, execute the move and display the altered board.

Start by building a simple turn method that accepts a board and displays it using display board (first turn spec).

Show student how to call that method in the runner (setting the runner to require the lib, setup state with the empty board, greet the user, and then execute the turn method correctly.). Show them a sample of that working simple output. Show them that if they execute arbitrary moves in the runner before callign turn the board will start up prefilled, which is fun. `move(board, 5, "X"); move(board, 9, "O"); turn(board)`.

Then add in the turn requirements step by step and you can constantly play with it via the runner or see output from the test suite.

Once you're on validating, we need to give the user a hint of how to re-ask for input. Suggest can we method composition for this? What we need is to re-run the entire turn routine? Can we call a method within a method. Suggest recurssion.

Let them know if they are familiar with loops, that's fine too, but it's not required, they should be able to not use a loop.

Let them know that's the hard part.

Then finish up. We wrapped all our TTT into a routine method turn. But it's not playing the game, it's just playing a turn, how do we make it continue getting turns until the end? 
