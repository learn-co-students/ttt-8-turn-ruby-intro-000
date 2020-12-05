# define method with arguement
def display_board(board)
  puts " #{board[0]} | #{board [1]} | #{board[2]} " # puts row 1 of board
  puts "-----------" # puts border of board
  puts " #{board[3]} | #{board[4]} | #{board[5]} " # puts row 2 of board
  puts "-----------" # puts border of board border
  puts " #{board[6]} | #{board[7]} | #{board[8]} " # puts row 3 of board
# end definition of method ln. six
end

# define method with parameters board array and index number on board array
def valid_move? (board, index)

# no position taken and index number between 0 and 8 returns true
!position_taken?(board, index) && index.between?(0,8)
end

# define method with parameters board array and index number on board array
def position_taken? (board, index)

# index number on board array is equal to X or O this will return true, anything else will return false
  board[index] == "X" || board[index] == "O"
end

# define method with one paramater
def input_to_index(input)
# converts argument to integer and subracts one
input.to_i - 1
# end method definition
end

# define method with three paramaters
def move(board, input, xo = "X")
# update board array with input set equal to string
  board[input] = xo
# end method definition
end

def turn(board)
  puts "Please enter 1-9:"

  input = input_to_index(gets.strip)

  if valid_move?(board, input)
    move(board, input, xo = "X")
  else
    turn(board)
  end

display_board(board)

end
