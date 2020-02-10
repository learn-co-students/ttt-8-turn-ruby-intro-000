def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  position = input_to_index(user_input)
  if valid_move?(board, position)
    move(board, position, token = "X")
    display_board(board)
  else
    puts "Try again"
    turn(board)
  end
end

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, position, token = "X")
  board[position] = token
end

def position_taken?(board, position)
   board[position] == " " || board[position] == nil
end

def valid_move?(board, position)
  if position.between?(0,8) && position_taken?(board, position)
    return true
  else
    return false
  end
end
