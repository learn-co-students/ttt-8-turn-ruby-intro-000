require 'pry'
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] != " " || board[index] != "" || board[index] != nil
  board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, input_to_index, value="X")
  return board[input_to_index] = value
end

def turn(board)
#  binding.pry
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value="X")
    display_board(board)
  else
    turn(board)
  end
end
