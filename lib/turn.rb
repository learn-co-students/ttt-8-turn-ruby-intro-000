# frozen_string_literal: true

def display_board(board)
  puts "\n------------\n #{board[0]} | #{board[1]} | #{board[2]} \n---------\n #{board[3]} | #{board[4]} | #{board[5]} \n---------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  user_input = input.to_i - 1
end

def valid_move?(board, index)
  return false if index < 0
  return false if index > 8
  return false if board[index] == 'X'
  return false if board[index] == 'O'

  if board[index] == ' ' || board[index] == '' || board[index].nil?
    true
  else
    false
  end
end

def move(board, index, position_character = 'X')
  board[index] = position_character if valid_move?(board, index)
end

def turn(board)

  puts board

  condition = true
  player_character = 'X'
  while condition
    puts 'Please enter 1-9:'
    input = gets.strip
    index = input_to_index(input)
    if !valid_move?(board, index)
      display_board(board)
      next
    end

    board[index] = player_character
    display_board(board)

    # condition = false
    player_character = if player_character == 'X'
                         'O'
                       else
                         'X'
                       end
    break
  end
end
