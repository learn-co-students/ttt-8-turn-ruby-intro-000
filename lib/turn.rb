#Displays the current state of the board based on an array input
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Takes user input and converts it to an array index
def input_to_index(user_input)
  input_as_int = user_input.to_i
  index = input_as_int - 1
end

#Validates user input given the current state of the board
def valid_move?(board, index)
  if index >= 0 && index <= 8
    if board[index] == " " || board[index] == "" || board[index] == nil
      return true
    else
      return false
    end
  else
    return false
  end
end

# Place a value on the board
def move(board, index, value = "X")
  board[index] = value
end

# Primary function to take turns
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts "Move is not valid."
    turn(board)
  end
end
