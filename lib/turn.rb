board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# Helper methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  array_index = (user_input.to_i) - 1
  puts "#{array_index}"
  return array_index
end

def position_taken?(board, user_input)
  #array_index = input_to_index(user_input)
  array_index = user_input
  if board[array_index] == "X" || board[user_input] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board,index)
  puts "#{index}"
  # if user_input.to_i >= 0 && user_input.to_i <=8
  if index.between?(0,8) && position_taken?(board,index) == false
    puts "valid_move? = true / position_taken? = false"
    puts "execute move"
    return true
  elsif index.between?(0,8) && position_taken?(board,index) == true
    puts "valid_move? = true / position_taken? = true"
    puts "DO NOT execute move"
    return false
  else
    puts "valid_move? = false"
    return false
  end
end

def update_array_at_with(array, index, value)
  array[index] = value
  #array.insert(index, value)
  puts "#{array}"
end

def move(board, array_index, char = "X")
  update_array_at_with(board, array_index, char)
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board,index) == true
    move(board, index)
    display_board(board)
  else
    until valid_move?(board,index) == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  end
end
