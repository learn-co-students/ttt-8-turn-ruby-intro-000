def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(index)
  index.to_i - 1
end


def valid_move?(board, index)
  !position_taken?(board, index) &&  index.between?(0,8)
end


def turn(board)
  puts "Please enter 1-9:"
  position = input_to_index(gets.to_i)
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    turn(board)
  end
end


def move(board, position, char="X")
  board[position] = char
  board
end


def position_taken?(board, index)
  board[index] != " "
end
