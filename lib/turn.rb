# Define display_board that accepts a board and prints
# out the current state.
# board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here

def valid_move?(board, index)
  index.between?(0, 8) != position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, input_to_index, character="X")
def update_array_at_with(array, index, value)
  array[index] = value
end
update_array_at_with(board, input_to_index, character)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index, "X")
    display_board(board)
  end
end
