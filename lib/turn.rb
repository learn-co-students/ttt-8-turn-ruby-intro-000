board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]

def display_board(board) 
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1

end

def move(board, input_to_index, character = "X")
  board[input_to_index] = character
  
end



def valid_move?(board, index)

    if board[index] == "X" || board[index] == "O" || board[index] == nil
    return false
  end
 index.between?(0,8)
    
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] != "X" || board[index] != "O"
  return true
  
 end
end
end