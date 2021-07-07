# display_board method
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board([" "," "," "," "," "," "," "," "," "])

# re-defined #position_taken? method
def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
  end
end

# valid_move? method
def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8)
    return true
  end
end

# input_to_index method
def input_to_index(input)
  input.to_i - 1
end

# move method
def move(board, index, character = "X")
  board[index] = character
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  #this method should take a number1-9 and use that as the user's move
  #the numbr should correspond to a place on the board with an X or O
  user_move = gets.chomp
  user_input_to_index = input_to_index(user_move)
  # valid_move?(board, user_input_to_index)
  if valid_move?(board, user_input_to_index)
    move(board,user_input_to_index,character = "X")
    display_board(board)
  else
  #ask for input again
    turn(board)
  end
end
