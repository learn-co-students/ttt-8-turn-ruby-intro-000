def display_board (board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  input = input.to_i - 1
end

def position_taken?(board, position)
return board[position] != " " && board[position] != "" && board[position] != nil
end

def valid_move?(board, index)
return index >= 0 && index <= 8 && position_taken?(board, index) == false
end

def move (board, index, token = "X")
board[index] = token
return board
end

def turn(board)
  puts "Please enter 1-9:"

choice = gets
index = input_to_index(choice)
if valid_move?(board, index)
  board = move(board,index)
  display_board(board)
else turn(board)
end
end
