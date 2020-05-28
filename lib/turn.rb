board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input .to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0,8)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " "
  false
elsif board[index] == ""
  false
elsif board[index] == nil
  false
else board[index] == "X" || board[index] == "O"
  true
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  gets.strip
end
