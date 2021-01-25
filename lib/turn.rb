def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(string)
  string.to_i - 1
end

def move(board, index, user_marker = "X")
  board[index.to_i] = user_marker
end

def valid_move?(board,position)
  position.to_i.between?(0,8) and not position_taken?(board, position.to_i)
end

def position_taken?(board,position)
  return false if [" ", " ", nil].include?(board[position])
  return true if ["X", "O"].include?(board[position])
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
