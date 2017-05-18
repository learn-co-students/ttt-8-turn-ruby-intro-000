

# ask for input
# get input
# convert input to index
# if index is valid
#  make the move for index
#  show the board
# else
#  ask for input again until you get a valid input
# end

#displays the board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# determines whether its a valid move
def valid_move?(board,index)
   if !(index >=0) || !(index<=8)
     return false
   end
   if position_taken?(board, index)
     return false
   else
     return true
end
end 


def position_taken?(board, index)
   if (board[index] == "") || (board[index] == " ") || (board[index] == nil)
     return false
   else
     return true
   end
 end

 def input_to_index(ind)
   ind = ind.to_i - 1
   return ind
 end
 
 def move(board, index, value = "X")
   board[index] = value
   return board
 end
 
 def turn(board)
   move = gets.strip
   puts "Please enter 1-9:"
   index = input_to_index(move)
   if valid_move?(board,index)
     board = move(board, index)
     display_board(board)
     return board
   else
    turn(board)
   end
 end