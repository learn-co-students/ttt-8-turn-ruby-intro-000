def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  num = input.to_i
  if num == 0
    return -1
  else
    return num - 1
  end
end

def valid_move?(board, input)
  # index = input_to_index(input)
  if input.between?(0, 8) && !position_taken?(board, input)
    return true
end
  return false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  return true
end

def move(board, input, token = "X")
  board[input] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
    turn(board)
  end
end
