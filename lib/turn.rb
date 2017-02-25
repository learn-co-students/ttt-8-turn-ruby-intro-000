def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "")
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return true
  end
  if board[index] == nil
    return false
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def move(array, index, value = "X")
  array[index] = value
end

move(board, 4, "X")
board

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_move?(board, index)
    end
    move(board, index, value = "X")
    display_board(board)
  end
end
