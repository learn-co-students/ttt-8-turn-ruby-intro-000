def display_board (board)
  puts "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if (index < 0 || index > 8)
    return false
  end
  if (position_taken(board,index) == true)
    return false
  end
  return true
end

def position_taken(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  end
  return false
end

def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

def move (board, index, token)
  board[index] = token
end

def turn(board)
  token = "X"
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  while (valid_move?(board, index) == false)
    input = gets
    index = input_to_index(input)
  end

  move(board, index, token)

  display_board(board)

end
