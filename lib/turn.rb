def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(users_input)
  users_input.to_i - 1
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  users_input = gets.strip
  index = input_to_index(users_input)
  value = "X"
  if valid_move?(board, index) == true
    move(board, index, value)
    display_board(board)
    #return move(board.replace, index.replace, value.replace)
  else
    turn(board)
  end
end


=begin
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip.to_i - 1
  if board[index] == valid_move(board, index)
    return move(board, index, value)

  if board[index] != valid_move(board, index)
    puts "This is not a valid move. Try again."

  end
=end
