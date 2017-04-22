def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move (board,index,character = "X")
  board[index] = character
  board
end

def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board,index)
  if (index.between?(0,8) == true && position_taken?(board,index) == false)
    true
  elsif (index.between?(0,8) == false || position_taken?(board,index) == true)
    false
  end
end

def turn(board)
  puts "Where would you like to go?"
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  validity = valid_move?(board,index)
  while validity != true
    puts "Invalid move.  Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    validity = valid_move?(board,index)
  end
  move(board,index,"X")
  display_board(board)
end
