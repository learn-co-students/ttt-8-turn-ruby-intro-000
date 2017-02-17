board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i-1
end

def position_taken?(board, user_input)
  if board[user_input] == ""
    return false
  elsif board[user_input] == " "
    return false
  elsif board[user_input] == nil
    return false
  else board[user_input] == "X" || "O"
    return true
  end
end

def valid_move?(board, user_input)
  if position_taken?(board, user_input) == false && user_input.between?(0,8) == true
    true
  else
    false
  end
end

def move(board, user_input, player = "X")
  board[user_input] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else turn(board)
  end
end
