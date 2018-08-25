def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.chomp)
  if valid_move?(board, input) == false
    input = gets.chomp
  else
    move(board, input)
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, pos)
  return true while pos.between?(0,9) && position_taken?(board, pos) == false
  return false
end

def position_taken?(board, pos)
  if board[pos] == " " || board[pos] == "" || board[pos] == nil
    return false
  end
  return true
end

def move(board, pos, char = "X")
  board[pos] = char
end
