def display_board(board)
  row_1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  line = "-----------"
  puts row_1
  puts line
  puts row_2
  puts line
  puts row_3
end


def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] === " " || board[index] == "" || board[index] == nil
end


def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
