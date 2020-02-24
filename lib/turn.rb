def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index)
  turn(board)
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, player)
  array[index] = player
end

# code your #valid_move? method here
def valid_move?(array, index)
  if index.between?(0, 8) == true && position_taken?(array, index) == false
    #move(board, index, "X")
    true
  else
    #turn(board)
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array, index)
  if array[index] == " "
    false
  elsif array[index] == ""
    false
  elsif array[index] == nil
    false
  else
    true
  end
end
