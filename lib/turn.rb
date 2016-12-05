require_relative "position_taken.rb"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return !position_taken?(board, index) && index.between?(0, 8)
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, board_index, player_char = 'X')
  board[board_index] = player_char
end

def turn(board)
  puts "Please enter 1-9:"
  usrin = gets.chomp
  index = input_to_index(usrin)
  if valid_move?(board, index)
    move(board, index, 'X')
    display_board(board)
  else
    turn(board)
  end
end
