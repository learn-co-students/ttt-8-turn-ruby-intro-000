# code your #position_taken? method here!

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)

if board[index] == " " || board[index] == nil || board[index] == ""
  return false
else
  return true
end
end

# code your #valid_move? method here
def valid_move?(board, index)
if position_taken?(board, index) == false && index.between?(0,8) == true
  return true
else
  return false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  if valid_move?(board, index) == true
    board[index] = value
  else
    puts "Please try again"
    turn(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  move(board, index, value = "X")

  display_board(board)
end
