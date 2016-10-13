def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def position_taken?(board, index)
  if (board[index] == "X" or board[index] == "O")
    return true
  elsif board[index] == " " || "" || nil
    return false
  end
end

def valid_move?(board, index)
  position_taken?(board, index) == false && (index + 1).between?(1, 9) == true
  # checks if input position [0, 8] is empty (not taken) and input position +1 [1, 9] is between 1 and 9.
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
  else
    turn(board)
  end
  display_board(board)
end
