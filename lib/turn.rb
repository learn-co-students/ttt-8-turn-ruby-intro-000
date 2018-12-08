
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def move(board, index, value = "X")
  update_array_at_with(board, index, value)
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  elsif valid_move?(board, index) != true
    turn(board)
  end
end


# code your #valid_move? method here

def valid_move?(board, index)
  if index < 0 || index > 8
    false
  elsif position_taken?(board, index) == false
    true
  elsif position_taken?(board, index) == true
    false
    else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == nil
    false
  elsif board[index] == "" || board[index] == " "
    false
  elsif board[index] != ""
    true
  end
end
