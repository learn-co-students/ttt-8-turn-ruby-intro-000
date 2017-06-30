#DISPLAY_BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#MOVE
def move(board, index, character = "X")
  board[index] = character
  return board
end

def position_taken?(my_board, position)
!(my_board[position].nil? || my_board[position].empty? || my_board[position] == " ")
end


def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 10)
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
  index = input_to_index(user_input)
  if  valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
  else
      turn(board)
  end
end
