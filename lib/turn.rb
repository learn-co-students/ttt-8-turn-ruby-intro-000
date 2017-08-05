def display_board(board) #draws the board withe the board array inside
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#changes the user input to an aaray index value
def input_to_index(input)
  index = input.to_i - 1
end

#updates the move with the current character
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
  move(board, index, character = "X")
  display_board(board)
  else
  puts "That is an invalid move"
  turn(board)
  end
end

###
=begin
get input
convert input to index
if index is valid
  make the move for input
else
  ask for input again until you get a valid input
end
=end


def move(board, index, character = "X")
  board[index] = character
end

#if the position is NOT taken and index is on the board it's a valid move
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true #is valid move
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end
