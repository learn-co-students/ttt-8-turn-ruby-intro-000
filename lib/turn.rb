board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  value = number.to_i - 1
end

def valid_move?(board, index)
    index.between?(0, 8) == true && position_taken?(board, index) == false
end

def position_taken?(board, index)
  if board[index] != nil
    board[index].strip != ""
  else
    true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if position_taken?(board, index) == false && index >= 0
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
