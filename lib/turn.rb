def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(str)
str.to_i - 1
end


def move(display_board, index, value)
  display_board[index] = value
end

def position_taken?(board, index)
  if index < 0
     return false
  end

if board[index] == " " || board[index] == "" || board[index] == nil
  return true
elsif board[index] == "X" || board[index] == "O"
  return false
end
end


def valid_move?(board , index)
 if position_taken?(board , index)
    return true
  else
    return false
 end
end

def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
   valid_move?(board , index)
   if position_taken?(board, index)
     move(board,index,value="X")
     display_board(board)
   else
     puts "invalid"
     turn(board)
   end
end
