def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  sepline1 = "-----------"
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  sepline2 = "-----------"
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts row1, sepline1, row2, sepline2, row3
end


def valid_move?(board, index)
  if "#{index}".to_i.between?(0, 8) == false
    false
  elsif "#{index}".to_i.between?(0, 8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || "" || nil
    false
  else
    false
  end
end


def input_to_index(input)
  input.to_i - 1
end


def move(array, index, x = "X")
  array[index] = x
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input) == true
    move(board, input, x = "X")
    display_board(board)
  else
    turn(board)
  end
end
