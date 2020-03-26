def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board [2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board [5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board [8]} "
  puts "-----------"
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, shape = "X")
  board[index] =  shape
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = user_input.to_i - 1
  if valid_move?(board, index)
    move(board, index, shape = "X")
    display_board(board)
  else
    turn(board)
  end
end
