def display_board(now_board)
  puts " #{now_board[0]} | #{now_board[1]} | #{now_board[2]} "
  puts "-----------"
  puts " #{now_board[3]} | #{now_board[4]} | #{now_board[5]} "
  puts "-----------"
  puts " #{now_board[6]} | #{now_board[7]} | #{now_board[8]} "
end
 
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true 
  else 
    false 
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(input)
  index = input.to_i - 1 
  return index
end

def move (board, index, char = "X")
  board[index] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
index = input_to_index(input)
puts index
if valid_move?(board, index)
  move(board, index)
  display_board(board)
else turn(board)
end
end