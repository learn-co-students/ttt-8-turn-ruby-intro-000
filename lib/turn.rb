# Method that displays the board
def display_board(board)
  dash = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dash
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dash
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Method that converts user input into Array index
def input_to_index(user_input)
  user_input.to_i - 1
end

# Method that marks the board based on user input
def move(board, index, value = "X")
  board[index] = value
end

# Method that determines if position is empty or taken
def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

# Method that determines if current move is valid
def valid_move?(board, index)
  if position_taken?(board, index) == true && index.between?(0, 8) == true
    false
  elsif index.between?(0, 8) == true
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  index = input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
