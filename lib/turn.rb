def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input=user_input.to_i
  user_input - 1
end

def move(board, index, character="X")
  board[index]= character
end
#valid_move
def valid_move?(board, index)
  if (index.between?(0,8) == true) && board[index]== " "
    return true
  else
    return false
  end
end

#turn
def turn(board)

  puts "Please enter 1-9:"
  user_input= gets.strip
  index = input_to_index(user_input)
    if valid_move?(board, index)== true
       move(board, index, character="X")
       display_board(board)
    else
      turn(board)
end
end
