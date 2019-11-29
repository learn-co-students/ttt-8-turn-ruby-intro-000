def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board,index)
  len = board.length
  if !(position_taken?(board,index)) && index.between?(0,len-1)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.chomp
  index = input_to_index(move)
  while !(valid_move?(board,index))
     turn(board)
     break
  end
  move(board,index,str = "X")
  display_board(board)
end
def move(board,index,str = "X")
  board[index] = str
end

def input_to_index(move)
   index = move.to_i - 1
   index
end
