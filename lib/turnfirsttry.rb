def display_board(board)  # Defines what the board looks like and how it connects to the array.
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) # Converts user input 1-9 into array index values (board index values) 0-8.
  user_input.to_i - 1
end

def move(board,index,current_player = "X") # Determines that the value at a given array index will be equal to "X" by default (later will have to allow for turns of X and O but not yet).
  board[index] = current_player
end

def valid_move?(board, index) # Defines a valid move as being an untaken position at an index within the array (e.g. 0-8 only)
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index) # Defines a taken position as X or O and and open/available position as "", " ", or nil.
  if (board[index] == "" || board[index] == " " || board[index]== nil)
    false
  elsif (board[index] == "X" || board[index] == "O")
    true
  end
end

def turn(board)
  puts "Welcome to Tic Tac Toe!"                  # Not needed because this is already in bin.
  board = [" "," "," "," "," "," "," "," "," "]   # Not needed because this is already in bin.
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  elsif valid_move?(board, index) == false
    until valid_move?(board, index) == true
    puts "Sorry, #{user_input} is not a valid move. Please select a number 1-9."
    user_input = gets.strip
    index = input_to_index(user_input)
      end
  end
  move(board, index)
  display_board(board)
end

#ask for input
#get input
#convert input to index
#if index is valid
#  make the move for index
#  show the board
#else
#  ask for input again until you get a valid input
#end
