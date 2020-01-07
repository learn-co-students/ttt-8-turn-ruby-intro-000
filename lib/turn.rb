def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert user input from a string to an integer
def input_to_index(input)
  input.to_i - 1
end
# check to make sure the input value is within range and therefore valid
def valid_move?(board, index)
  if !position_taken?(board, index) && (index).between?(0,8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

# should accept a board, an index from the user, and a token to mark that position with. should set the correct index value of that position within the board equal to the token
def move(board, index, token = "X")
board[index] = token
return board
end

def turn(board)
# ask the user where they want to go
puts "Please enter 1-9:"
# gets user input
choice = gets.strip
# convert input to integer
selection = (input_to_index(choice))
# check to make sure the selection is valid
  if valid_move?(board, selection) == true
  move(board, selection)
  display_board(board)
else
  turn(board)
  end
end
