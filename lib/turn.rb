def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
    true
  else
    false
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board,index,marker)
  if valid_move?(board,index) == true
    board[index]=marker
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  while index > 8 || index < 0
    puts "Please enter 1-9:"
    index = input_to_index(gets)
  end
  move(board,index,"X")
  display_board(board)
end
