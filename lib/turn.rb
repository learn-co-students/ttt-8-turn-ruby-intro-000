def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board,index,char="X") 
    display_board(board)
  else 
    turn(board)
  end
end

def valid_move?(board, index)
  return !position_taken?(board, index) && index.between?(0,8)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index) 
  return board[index] == "X" || board[index] == "O" ? true : false
end

def display_board(b) # b stands for board
  puts [0,3,6].map {|i| " #{b[i]} | #{b[i+1]} | #{b[i+2]} "}.join("\n#{'-'*11}")
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board,index,char="X")
  board[index] = char
end