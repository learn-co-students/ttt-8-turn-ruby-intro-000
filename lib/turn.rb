def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    until valid_move?(board, index)
      puts "Please enter 1-9:"
      user_input = gets.chomp
      index = input_to_index(user_input)
    end
    move(board, index, "X")
    display_board(board)
  end
end

def display_board(board)
  puts " #{ board[0] } | #{ board[1] } | #{ board[2] } "
  puts "-----------"
  puts " #{ board[3] } | #{ board[4] } | #{ board[5] } "
  puts "-----------"
  puts " #{ board[6] } | #{ board[7] } | #{ board[8] } "
end

def input_to_index(user_input)
  input = user_input.to_i
  index = input - 1
end

def valid_move?(board, index)
  x = board[index]
  if index > 8 or index < 0
    false
  elsif x == " " or x == "" or x = nil
    true
  else
    false
  end
end

def move(board, index, token)
  board[index] = token
end
