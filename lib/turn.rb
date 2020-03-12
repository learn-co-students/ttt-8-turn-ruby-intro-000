def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
if index.between?(0,8) && !position_taken?(board, index)
 return true
else
  return false
 end
end
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
 else
   return false
end
 end
 def input_to_index (user_input)
user_input.to_i-1
end

def move (the_board_array,the_index,the_players_character="X")
 the_board_array[the_index] = the_players_character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.chomp
  index=input_to_index(user_input)
  if valid_move?(board,index)
   return move(board, index) && display_board(board)
   else puts "Please enter 1-9:"
    return turn(board)
end
 end
