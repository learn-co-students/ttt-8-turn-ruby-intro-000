# Define display_board that accepts a board and prints out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Define valid_move? method which takes in a board and an index and returns the validity of the move.
def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif index > 8 || index < 0
    false
  else
    true
  end
end

# Define position_taken? method to check to see if a position is already taken when a move is described.
def position_taken?(board, index)
  check = board[index]
  if check == " " || check == "" || check == nil
    false
  else
    true
  end
end

# Define an input_to_index method to gather a user input and convert it to a board index.
def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input-1
end

# Define a move method to insert a character into a position on the board.
def move(board, position, character = "X")
  board[position] = character
end

# Define the turn method.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
  else
    puts "Not a valid entry, position must be between 1 and 9 and not be currently occupied"
    turn(board)
  end
  display_board(board)
end
