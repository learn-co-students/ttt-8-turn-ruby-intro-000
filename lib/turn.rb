board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
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

def input_to_index(user_input)
  new_user_input = user_input.to_i
  new_user_input -= 1
  return new_user_input
end

def valid_move?(board, spot)
  if spot.between?(0, 8) && position_taken?(board, spot) == false 
      true
	else
	    false
	end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     return false 
   else
     return true
   end
end

def move(board, index, token = "X")
  board[index] = token 
  return board
end