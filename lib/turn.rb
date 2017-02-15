def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  return input = input - 1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, position, character = "X")
  board[position] = character
end



def turn(board)

#   ask for input
  puts "Please enter 1-9:"
# get input
  index = gets.strip
# convert input to index
  index = input_to_index(index)
# if index is valid
  if valid_move?(board, index)
#   make the move for index
  move(board, index)
  display_board(board)
else
  turn(board)
end
#   show the board
# else
#   ask for input again until you get a valid input
# end
end
