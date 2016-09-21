def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = (user_input.to_i) - 1
end

def valid_move?(board, user_input)
  if user_input >= 0 && user_input <= 8 && board[user_input] == " "
      true
      board[user_input] = "X"
  		display_board(board)
  else
      false
      "#{user_input + 1} in a invalid option."
      turn(board)
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def move(board, position, character = "X")
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)

 	valid_move?(board, user_input)
end
