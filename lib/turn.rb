def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def position_taken?(board, index)
if board[index] == "  " || board[index] == " "
 return false
 elsif board[index] == nil
   return false
 elsif board[index] == ""
   return false
 elsif board[index] == "X" || board[index] == "O"
   return true
 end
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(num)
  num.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
 if valid_move?(board, index)
  move(board, index, character = "X")
  display_board(board)
else
  puts "Please enter 1-9:"
  num = gets.chomp

end
end
