def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# determine the move is valid or not, return true if it is, return false if it is not
def valid_move?(board, index)
   if index.between?(0, 8) && position_taken?(board, index) == false
      return true
   else
      return false
   end
end

# determine if position_taken or not, return false if not, return true if it has
def position_taken?(board, index)
   if board[index] == " " || board[index] == "" || board[index] == nil
      return false
   end

   if board[index] == "X" || board[index] == "O"
      return true
   end
end

# input_to_index: #convert > user_input to integer, #convert: user_input to index
def input_to_index(user_input)
   user_input = user_input.to_i - 1
end

# make the move on the board, default move is "X"
def move(board, index, token = "X")
     board[index] = token
end

def turn(board)
   puts "Please enter 1-9:"

   user_input = gets.strip
   index = input_to_index(user_input)

   if valid_move?(board, index)
      move(board, index)
   else
      turn(board)
   end

   display_board(board)
end
