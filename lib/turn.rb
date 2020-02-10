# frozen_string_literal: true

def display_board(board)
  puts "\n------------\n #{board[0]} | #{board[1]} | #{board[2]} \n---------\n #{board[3]} | #{board[4]} | #{board[5]} \n---------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  user_input = input.strip.to_i - 1
end

def valid_move?(board, index)
  return false if index < 0 || index > 8

  return false if board[index] == 'X' || board[index] == 'O'

  # return true if board[index] == '   ' || board[index] == '' || board[index].nil?

  true
end

def move(board, index, position_character = 'X')
  board[index] = position_character if valid_move?(board, index)
end

def turn(board)
  condition = true
  player_character = 'X'
  while condition
    puts 'Please enter 1-9:'

    input = gets.strip
    index = input_to_index(input)
    next unless valid_move?(board, index)

    puts(board)
    condition = false
    player_character = player_character == 'X' ? 'O' : 'X'

  end

  puts board
end
