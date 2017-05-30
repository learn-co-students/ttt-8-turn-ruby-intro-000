def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

# code your #valid_move? method here
def valid_move?(board, index)
  empty_board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  if board == empty_board && index > 8
    false
  elsif board == empty_board && index < 0
    false
  elsif board == empty_board
    true
  elsif position_taken?(board, index)
    false
  elsif index >= 0 && index <= 8
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if index == nil || board[index] == nil
    false
  elsif board[index] == " " || board[index] == ""
    false
  else
    true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)

  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end
