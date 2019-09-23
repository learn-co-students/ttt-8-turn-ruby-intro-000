require "pry"

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def turn(board)
    puts "Please enter 1-9:" # asks for user input
    input = gets.strip      #gets the user input
    index = input_to_index(input)
    if valid_move?(board, index) == false
    #  binding.pry
      turn(board)
    else
      move(board, index, value= "X")
      display_board(board)
    end
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
  return true
else
  return false
  end
end

def position_taken?(board, index) #method name and parameters
  if board[index] == " " || board[index] ==  ""  # to return true for " ", ""
    return false
  elsif board[index] == "X" || board[index] == "O"  #return false for "X" & "O"
    return true
   end
 end

def move(array, index, value = "X")
  array[index] = value
  def update_array_at_with(board, index, value = "X")
   return board
  end
end
