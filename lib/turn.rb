require_relative '../lib/turn'
require_relative '../lib/valid_move'
require_relative '../lib/move'
require_relative '../lib/display_board'

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(board)
  index = -2
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  board = move(board, index)

end
