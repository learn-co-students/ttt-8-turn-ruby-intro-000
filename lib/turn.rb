def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == true || index >= 9
    false
  elsif index < 0
    false
  else index.between?(0, 8)
    true
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def move(array, index, value = "X")
    array[index] = value
end

def turn(board)
  puts "Please enter 1-9:" #get input
  input = gets.strip
  index = input_to_index(input) #convert to index
    if valid_move?(board, index) == true  #if index is valid
      move(board, index, value = "X") #make the move for input
      display_board(board) #show the board
    else
      puts "Invalid."
      turn(board) #ask for input again until you get a valid input
    end
end
