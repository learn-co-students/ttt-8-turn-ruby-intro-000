def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    asks_input
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def asks_input
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
      false
  elsif index >= 0 && index <= 8
    true
  end
end

def move(board, index, value = "X" )
  board[index] = value
end
