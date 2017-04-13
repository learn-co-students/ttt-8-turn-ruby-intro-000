board = []
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if index.to_i.between?(0,8) && !position_taken?(board, index)
return true
else
  false

end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
if board[index] == " "
  false
elsif board[index] == ""
  false
elsif board[index] == nil
  false
elsif board[index] == "X" || "O"
  true
else
end
end
def input_to_index(user_input)
  index = user_input.to_i - 1
end
def move(board, index, char = 'X')
  board[index] = char
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
