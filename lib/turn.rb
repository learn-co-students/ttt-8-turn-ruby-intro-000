def turn(board)
  index = get_input
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, index)
  if (!position_taken?(board, index) && index.between?(0,8))
    true
  else
    false
  end
end

def move(board, index, value = "X")
    board[index] = value
end

def get_input
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
end

def position_taken?(board, index)
  if (board[index] == " " or board[index] == "" or board[index] == nil or index == "" or index == " " or index == nil)
    false
  else
    true
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
