
turn = 0
def display_board (board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "---------------------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "---------------------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
 input_number = input.to_i
 index = input_number - 1
end

def position_taken?(board, index)
if board[index] == " "
  false
elsif board[index] == ""
  false
elsif board[index] == nil
  false
elsif board[index] == "X" || "O"
  true
  end
end

def valid_move?(board, index)
if position_taken?(board, index)
  false
elsif index < 0 || index > 8
  false
elsif !position_taken?(board, index)
  true
 end
end

def move(board, index, x_o)
board[index] = x_o
end

def turn(board)
  x_o = "X"
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
  if valid_move?(board, index)
  move(board, index, x_o)
elsif !valid_move?(board, index)
  puts "Invalid move"
  turn(board)
  end
  display_board(board)
end
