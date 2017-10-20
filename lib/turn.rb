board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]
def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

  end

def input_to_index(user_input)
  user_input = user_input.to_i - 1

end

def valid_move?(board, index)
if (board[index] == 'X' || board[index] == 'O')
 false
 elsif  index.between?(0, 8) == true
   true
else
  nil
end

end

def move(board, index, player="X")

board[index] = player
return
end

def turn(board)
puts "Please enter 1-9:"
user_input = gets.chomp
index = input_to_index(user_input)
if valid_move?(board, index) == true
  move(board, index)
  display_board(board)
else
  puts "Please enter 1-9:"
  user_input = gets.chomp
end
end
