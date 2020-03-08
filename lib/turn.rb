def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  is_valid_move = valid_move?(board, index)
  if is_valid_move == false
    puts "Please enter 1-9:"
    input = gets.strip
  else
    move(board, index, player = "X")
  end
  display_board(board)
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, board.length)
    return true
  else
    return false
  end
end
