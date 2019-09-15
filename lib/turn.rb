def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def position_taken?(board, index)
  !(((board[index] == " ")||(board[index] == ""))||(board[index] == nil))
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif index.between?(0,8) == false
    return false
  else
    return true
  end
end

def move(board, index, input = "X")
  board[index] = input
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, input = "X")
    display_board(board)
  else
    puts "Invalid move"
    turn(board)
  end
end
