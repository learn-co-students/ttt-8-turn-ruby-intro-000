def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]

def position_taken?(board,index)
  if      board[index] == " " || board[index] == "" || board[index] == nil then false
  elsif
  board[index] == "X" || board[index] == "O" then true
end
end

def valid_move?(board,index)
  if index.between?(0,8) && board[index] == " " then true
  else false
  end
end

def input_to_index(user_input)
user_input.to_i - 1
end

def move(board,index,value="X")
board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  q = input_to_index(input)
  if valid_move?(board,q) == true then move(board,q) && display_board(board)
  elsif valid_move?(board,q) == false then turn(board)
end
end
