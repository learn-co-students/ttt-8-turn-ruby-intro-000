def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index) == false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  until valid_move?(board, input_to_index(input))
    puts "Please enter 1-9:"
    input = gets.strip
  end
  
  move(board, input.to_i - 1)
  display_board(board)
end
