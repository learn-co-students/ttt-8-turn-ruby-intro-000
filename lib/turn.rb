def display_board(board)
  a = " #{board[0]} | #{board[1]} | #{board[2]} "
  b = " #{board[3]} | #{board[4]} | #{board[5]} "
  c = " #{board[6]} | #{board[7]} | #{board[8]} "
  d = "-----------"

  puts a
  puts d
  puts b
  puts d
  puts c
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if (index >= 0 && index < 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def move (board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  user_input = input_to_index(user_input)

  until valid_move?(board, user_input) == true
    puts "Please enter 1-9:"
    user_input = gets.chomp
    user_input = input_to_index(user_input)
  end

  move(board, user_input, char = "X")
  display_board(board)
end
