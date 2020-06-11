def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
     return true
   end
   if position_taken?(board, index) == true
     return false || nil
   end
end


def input_to_index(input)
  new_input = input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets
  index = input_to_index(number)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    return turn(board)
  end
end
