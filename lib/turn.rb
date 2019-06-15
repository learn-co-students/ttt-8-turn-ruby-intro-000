def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "  " || board[index] == " " || board[index] == nil
    true
  elsif board[index] == "X" || board[index] == "O"
    false
end
end

def valid_move?(board, index)
  if index.to_i.between?(0,8)
  position_taken?(board, index)
  end
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  loop do
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
  board[index] = "X"
  display_board(board)
    break
  end
puts "Invalid selection"
  end
end
