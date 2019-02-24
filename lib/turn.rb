def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def move(board, index, token)
  board[index] = token
end

def input_to_index(users_move)
  return users_move.to_i - 1
end

def turn(board)
  token = "X"
  puts "Please enter 1-9:"
  user_input = input_to_index(gets.chomp)
  if valid_move?(board, user_input) == false
    puts "Invalid Move, Please enter again."
    user_input = input_to_index(gets.chomp)
  else
    move(board, user_input, token)
    display_board(board)
  end
end
