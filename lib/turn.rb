def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
 if board[index] == " " || board[index] ==  "" || board[index] ==  nil
   return false
 else
   return true
  end
end


def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index) == false
      true
    end
  end
end


def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board, input)
  puts "Please enter 1-9:"
  input.to_i - 1
  if index.between?(0,8)
    if position_taken?(board, index) == false
      true
  if false
    turn(board)
  end
end
end
end