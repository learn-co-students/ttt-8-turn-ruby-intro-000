#Get user input
def input_to_index(user_input)
  return user_input.to_i - 1
end

#valid_move?
def valid_move?(board,index)
  index.between?(0,8)
  if !position_taken?(board,index) && index.between?(0,8)
    true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
if board[index] == " " || board[index] == "" || board[index] == nil
  false
elsif board[index] == "X" || board[index] == "O"
  true
end
end

#move
def move(board_array,index,player="X")
  board_array[index] = player
end


#display_board
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
