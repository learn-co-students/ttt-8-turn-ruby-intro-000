def display_board(board)
puts" #{board[0]} | #{board[1]} | #{board[2]} "
puts"-----------"
puts" #{board[3]} | #{board[4]} | #{board[5]} "
puts"-----------"
puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets
  index=input_to_index(input)
  result=valid_move?(board,index)
  if(result==true)
    move(board,index,"X")
    display_board(board)
  else
    turn(board)
 end
end

def input_to_index(input)
  index=input.to_i
  index=index-1
  return index
end

def valid_move?(board,index)
  if((index>=0&&index<=8) && (position_taken?(board,index)==false))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method aboved
def position_taken?(board,index)
  if(board[index]==" "||board[index]==""||board[index]==nil)
    return false
  else
    return true
  end
end


def move(board,index,value="X")
  board[index]=value
end
