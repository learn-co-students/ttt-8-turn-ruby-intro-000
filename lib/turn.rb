board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "# Define a method display_board that prints a 3x3 Tic Tac Toe Board
end

def valid_move?(board, index)
    if index >= 0 && index <= 8 && !position_taken?(board, index)
      true
    else
      false
    end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(input)
  input = input.to_i
  input - 1
end

def move(board, index, player_character="X")
  board[index] = player_character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end

  move(board, index, player_character="X")
  display_board(board)
#  while input > 8
#    turn(board)
#  end
end
