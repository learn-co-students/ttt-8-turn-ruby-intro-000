def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

def position_taken?(board, index)
  taken = board[index] == "X" || "O"
return taken
end

def valid_range?(board, index)
  good_range = board[index] >= 0 && board[index] < 9
return good_range
end

def valid_move?(board, index)
valid = (!position_taken?(board, index) && valid_range?(board, index))
end

def move(board, index, character = "X")
  if valid_move(board, index)
    board[index] = character
  end
end

def turn(board, index)
end
