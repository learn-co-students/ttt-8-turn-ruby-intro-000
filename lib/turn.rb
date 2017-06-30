require 'pry'

# def display_board(board)
#   puts " #{board[0]} | #{board[1]} | #{board[2]} "
#   puts "-----------"
#   puts " #{board[3]} | #{board[4]} | #{board[5]} "
#   puts "-----------"
#   puts " #{board[6]} | #{board[7]} | #{board[8]} "
# end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  # user_input = gets.chomp
  user_input = user_input.to_i
  user_input -= 1
end


# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.chomp.to_i
#     if input == 1..9
#
#     else
#       turn
#     end
# end


#defines the method, taking two arguments
def valid_move?(board, index)
  index = index.to_i
  if index.between?(0,8)
    if board[index] == "X" || board[index] == "O"
      false
    else
      true
    end
  else
    puts "fake!"
  end

end

#The method should set the correct index value
# of that position within the board equal to the token.
def move(board, index, token="X")
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  x = input_to_index(input)
  # valid_move?(board, x)
    if valid_move?(board, x)
      move(board, x, token="X")
      puts "Please enter 1-9:\n"
      display_board(board)
    else
      "invalid"
      turn(board)
    end
end

# i get an error message when I use the displayborad method within the turn method.
# the test wants me to respond to a valid move by printing the new board.
# it seems like that's what's happening, but maybe there's a formatting error.
# In pry, display_board returns nil; but in the error message, it shows that my code
# outputted a board.
