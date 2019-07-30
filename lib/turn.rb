def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  converted_input = user_input.to_i
  converted_input - 1
end

def valid_move?(board, index)
 index.between?(0, 8) && !(position_taken?(board, index))
end

def move (board, index, character = "X")
  board[index] = character
end

def position_taken?(board, index)
 taken = nil
 if board[index] == " " || board[index] == "" || board[index] == nil
taken = false
else
  taken = true
end
 end

 def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
