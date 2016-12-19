def display_board(state = board)
  puts " #{state[0]} | #{state[1]} | #{state[2]} "
  puts "-----------"
  puts " #{state[3]} | #{state[4]} | #{state[5]} "
  puts "-----------"
  puts " #{state[6]} | #{state[7]} | #{state[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  check = board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
!(position_taken?(board, index)) && index.between?(0, 8)
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  if valid_move?(board, index = input_to_index(input = gets.strip))
    move(board, index, "X")
  else
    turn(board)
  end
  display_board(board)
end
