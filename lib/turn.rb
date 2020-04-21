def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, position, char="X")# It allows X and O players
  board[position] = char
end

def input_to_index(user_input)# convert the user input to an integer/ substract 1
  user_input.to_i-1
end

def turn(board)# turn moves.
  puts "Please enter 1-9:"
  input = gets.strip# gets the user input/ from our move lesson/ its the user input
  index = input_to_index(input)#calls the input_to_index method
  if valid_move?(board, index) && move(board, index)# if the move is valid, ==>>
    display_board(board)# ==> than display the correct board
  else
    turn(board)
  end
end
