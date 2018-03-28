def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def valid_move?(board, index)
if index.between?(0,8) && !position_taken?(board, index)
  true
else position_taken?(board,index) == true || !index.between?(0,8)
  false
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def input_to_index(user_input)
   user_input.to_i - 1
end

  def move(board, user_input, player_char = "X")
  board[user_input] = player_char
end

def turn(board)
  puts "Please enter 1-9:"
=begin
get input, convert input to index
if index is valid make the move for input
else ask for another input until valid input
=end
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(board, index) == true
  move(board,index,"X")
  display_board(board)
else turn(board)
end
end
