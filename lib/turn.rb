def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip()
  index = input_to_index(input)
  while valid_move?(board,index) == false
    puts "Please enter 1-9:"
    input = gets.strip()
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board,index)
    return false
  elsif index < 0 || index > 8
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  number = input.to_i
  i = number - 1
end

def move(board, index, value = "X")
  board[index] = value
end
