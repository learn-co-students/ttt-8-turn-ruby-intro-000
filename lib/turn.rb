def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board) 
  else
    turn(board)
  end
end

def move(board, index, character = "X")
  board[index] = character
  board
end

def valid_move?(array, index)
  if index.between?(0, 8) && position_taken?(array, index) == false
    return true
  else
    return false
  end
end

def position_taken?(array, index_number)
  if array[index_number] == " " || array[index_number] == "" || array[index_number] == nil
    return false
  elsif array[index_number] == "X" || array[index_number] == "O"
    return true
  end
end

def input_to_index(input)
  index = input.to_i - 1
  index
end
