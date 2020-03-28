#dispay_board method accepts a board as an argument and print out the current state of the board for the user
def display_board(board)
   puts " #{board[0] } | #{board[1] } | #{board[2] } "
   puts "-----------"
   puts " #{board[3] } | #{board[4] } | #{board[5] } "
   puts "-----------"
   puts " #{board[6] } | #{board[7] } | #{board[8] } "
 end
 #defining #position_taken? to check if a position is occupied in its own method
 def position_taken?(board, index)
   if board[index] == " " || board[index] == "" || board[index] == nil
     return false
   else
     return true
   end
 end
 #accepts a board and an index from the user and return true if the index is
 # within the correct range of 0-8 and is currently unoccupied by an X or O token
  def valid_move?(board, index)
    if (index).between?(0,8) && !(position_taken?(board, index))
      return true
    else
      return false
    end
  end
#converts from user's raw input into index
def input_to_index(user_input)
  user_input.to_i-1
end
#sets the correct index value of that position within the board equal to the token.
def move(board, position, char="X")
  board[position]=char
end

def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
   if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      turn(board)
   end
  move(board, index)
end
