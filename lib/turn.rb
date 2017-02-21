def display_board(board)
  dash = "-----------"
  row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  print "#{row_one}\n#{dash}\n#{row_two}\n#{dash}\n#{row_three}"
end

def input_to_index(index)
  if index != " "
    index.to_i - 1
  else
    index = -1
  end
end

def valid_move?(board, index)
  index.between?(0,8) && position_taken?(board, index) ? true : false
end

def position_taken?(board, index)
  board[index] == " "
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  display_board(board)
  input = gets.strip
  user_index = input_to_index(input)
  if valid_move?(board, user_index)
    move(board, user_index)
    display_board(board)
  else
    turn(board)
  end
end
