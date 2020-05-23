def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = "X")
  board[index] = character

  return board
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input -= 1

  return new_user_input
end

def update_array_at_with(board, index, character)
  board[index] = character
end

def position_taken?(board, index)
  input = board[1..9]
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index) == true
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
