def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  outcome = valid_move?(board, index)
  if outcome == false
    input = gets.strip
    # index = input_to_index(input)
  end
  if outcome == true
    move(board, index, value="X")
  end
  display_board(board)
end
