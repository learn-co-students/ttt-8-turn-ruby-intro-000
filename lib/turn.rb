
  puts " Welcome to Tic Tac Toe !!"
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board
  puts "Enter a position on the board 1-9:"
end
def input_to_index(user_input)
  user_input.to_i - 1
  input_to_index = user_input.to_i - 1
end
def valid_move?(board,index)
   index.between?(0,8) && !position_taken?(board,index)
end
def position_taken?(board, index)
!(board[index] == " " || board[index] == "" || board[index] == nil)
end
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def move(array, index, name = "X")
  array[index] = name
end
def turn (board)
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board, index)
  move(board,index, "X")
  display_board(board)
else
  puts "That was invalid, again."
  display_board(board)
puts "where would you like to go?"
input = gets.strip
end
end
