
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i-1
end

def spot_taken?(board, index)
  (board[index] == "X" || board[index] == "O")
end

def valid_move?(board, index)
  if (0 <= index && index <= 8)
    !spot_taken?(board, index)
  else
    false
  end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

def turn(board)
  goodInput = false
  while !goodInput
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    goodInput = valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end
