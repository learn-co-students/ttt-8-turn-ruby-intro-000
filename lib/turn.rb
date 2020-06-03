#All the methods for Tic Tac Toe!

#To display the current state of the board
def  display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Convert the user's input into an acceptable index for board[]
def input_to_index(input)
  input.to_i - 1
end

#Update the board to reflect the user's move
def move(board, index, char = "X")
  board[index] = char
end

#Check if a position is already taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

#Validate the user's chosen move
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

#The user's turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index, char = "X")
  end
  display_board(board)
end
