def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    return false
  else
    return true
  end
end

def input_to_index(board)
  (board.to_i)-1
end
# code your input_to_index and move method here!
#come back, this seems hardcoded

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)

  puts "Please enter 1-9:"

  number = gets
num_ind =  input_to_index(number)

  if valid_move?(board,num_ind)

    move(board, num_ind, value = "X")
    display_board(board)
  else
    turn(board)
  end

end
