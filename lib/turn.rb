def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i-1
end

def valid_move?(board,index)
  index.between?(0,8) && position_taken?(board,index)==false
end

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end


def move(array,index,value="X")
  array[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index,value="X")
  else
    turn(board)
  end
  display_board(board)
end
