#display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#input to index
def input_to_index(user_input)
  useri = user_input.to_i
  useri - 1
end
#valid move
def valid_move? (board, index)
    if index < 0 || index > 8 #this checks if the input is within the confines of tic tac toe. if false, fail.
      false
    elsif board[index] == "O" || board[index] == "X" #this checks if there is an occupant in the target cell.
      false
    else
    true
  end
end

def position_taken? (board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] == ""
    false
  elsif board[index] == " "
    false
  elsif board[index] == nil
    false
  else
    false
  end
end
#turn
def turn(board) #why does this needs the argument board? i guess they get the other variables inside the method.
  puts "Please enter 1-9:"
  input = gets
  input_i = input_to_index(input)
  if valid_move?(board, input_i) == true && position_taken?(board, input_i) == false
    move(board , input_i , character="X")
    display_board(board)
  else
   turn(board)
  end
end

#move
def move(array , index , character="X")
  array[index] = character
  return array
end
