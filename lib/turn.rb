
def display_board(board) # prints out current state of board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) # converts user input to index
  index = user_input.to_i - 1
end

def valid_move?(board, index) # checks if move is valid
  if index.between?(0,8) && !(position_taken?(board, index))
    then true
  end
end

def position_taken?(board, index) # checks if position is taken
  if board[index] == "" ||
    board[index] == " " ||
    board[index] == nil
    then false
  elsif board[index] = "X" ||
    board[index] = "O"
    then true
  end
end

def move(board, index, player_token = "X") # the actual move
  board[index] = "#{player_token}"
end

def turn(board) # individual turn of play
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, player_token = "X")
  end
  display_board(board)
end