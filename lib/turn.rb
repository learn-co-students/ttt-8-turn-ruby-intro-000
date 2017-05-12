def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  num.to_i - 1
end

def move(board, position, char = 'X')
  board[position] = char
  display_board(board)
end

def valid_move?(board,move)
  move >= 0 && move <= 9 && !position_taken(board, move)
end

def position_taken(board, move)
  board[move] == 'X' || board[move] == 'O'
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(board)
  puts "Please enter 1-9:"
  position = input_to_index(gets.chomp)
  if valid_move?(board,position)
    move(board, position, char = 'X')
  else
    puts "Please enter 1-9:"
    position = input_to_index(gets.chomp)
  end
end
