def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil && index == (0..8)
  true
  else
  false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(input)
end

# code your input_to_index and move method here!
def input_to_index(input) #(user_input)
  input.to_i - 1          #user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, index)
  #  taken = nil
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  #elsif (board[index] == "X" || board[index] == "O")
  #  true
  else
    true # "invalid entry"
  end
#  (board[index] == " " || board[index] == "" || board[index] == nil) ?
#  false : true
end



#  board[index] == " " || board[index] == "" || board[index] == nil && index == (0..8)?
#  true : false
#end

input = gets.strip
index = input_to_index(input)

position_taken?(board, index)
if position_taken?(board, index)
  puts "invalid"
  puts "Where would you like to go ?"
  input = gets.strip
  index = input_to_index(input)
else
  move(board, index)
end
