def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && (board[index] != "X" && board[index] != "O")
    true
  end
end

  def position_taken?(board, index)
    board[index] != " "
  end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i-1
  input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end
