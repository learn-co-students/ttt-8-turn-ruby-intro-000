# method to print out the state of the board, when the board array is passed as an argument
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# method to update the board, given a user's move
def move(board, index, character="X")
  board[index] = character
  display_board(board)
end

# method to return whether a user-proposed move is valid, when passed a board array and index
def valid_move?(board, index)
  if index.between?(0, 8) == false || position_taken?(board, index) == true
    return false
  else
    return true
  end
end

# method to return whether a position on the board is already occupied
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

# method to convert a user's input to a specific index for the board array
def input_to_index(input)
  input.to_i() - 1
end  

# method to run a single turn of Tic Tac Toe
def turn(board)
  puts "Please enter 1-9:" #get user input
  input = gets.strip #store the user input
  puts "I entered #{input} in response to the gets prompt."
  index = input_to_index(input) #convert the user input to an index and store it
  if valid_move?(board, index) == true
    move(board, index)
  else
    turn(board)
  end
end