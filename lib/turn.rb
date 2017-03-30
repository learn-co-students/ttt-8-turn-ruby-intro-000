def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if  board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0, 8)  && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(board,index,token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input - 1
  if  valid_move?(board, index)
    move(board,index)
    display_board(board)
  else
    puts "Please enter a number between 1 and 9"
    turn(board)
  end
end
