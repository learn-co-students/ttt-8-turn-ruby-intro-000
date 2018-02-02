
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    puts "Invalid Move, try again"
    turn(board)

  end
end



#  display_board(board)

#  if valid_move?(board,input)

#  move(board,input)
#  display_board(board)
#  else
#    puts "Invalid move, try again"
#  end

def input_to_index(input)
  input.to_i-1
end

def move(array,index,value= "X")
  array[index] = value
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#code your #valid_move? method here
def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index)
    true
  end
end


  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(array,index)
  if array[index]==" "||array[index]==""||array[index]==nil
    true
#  else array[index]=="X"||array[index]=="O"
#    false
  end
end
