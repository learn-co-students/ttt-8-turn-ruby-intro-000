def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #position_taken? method here!
def position_taken?(board, index)
  if (board[index] ==" "|| board[index] == "")
    return false;
    elsif board[index] == nil
  return false;
else 
  return true
end
end
# Define display_board that accepts a board and prints
# out the current state
def input_to_index(num)
  input = num.strip
  int =  input.to_i
  input = int - 1
  return input 
end

def move(board,index,char = 'X')
  board[index] = char
  return board
end
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #position_taken? method here!
def position_taken?(board, index)
  if (board[index] ==" "|| board[index] == "" || board[index] == nil)
  return false;
else 
  return true
end
end

# code your #valid_move? method here
def valid_move?(board,indx)
  index = indx.to_i;
if index >= 0 && index <= 8 && board[index] != 'X' || board[index] == 'Y' 
  return true;
else
return false
end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip;
  index1 = input_to_index(index)
  is_valid = valid_move?(board,index1)
  if  is_valid == false
  puts "Move invalid, please enter 1-9 that is not currently taken:"
  turn(board)
else 
 move(board,index1,char = 'X')
end
display_board(board)
end


