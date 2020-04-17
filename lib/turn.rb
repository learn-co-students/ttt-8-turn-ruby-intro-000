board = [" "," "," "," "," "," "," "," "," "]
  def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
if board[index] == " " || board[index] == ""|| board[index] == nil
  return false
elsif between?(board,index) == true

return false
else
  return true
end
end
def between?(board,index)
if index.between?(0, 8) == false
  return false
end
end
def valid_move?(board, index)
if !position_taken?(board,index) && index.between?(0, 8)
  return true
else
  return false
end
end
def input_to_index(user_input)
  converted_input = user_input.to_i - 1
index = converted_input
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move(board, index, character = "X")
board[index] = character
return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
