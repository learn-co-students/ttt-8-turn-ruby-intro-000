def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  in_bounds = index.between?(0, board.length - 1)
  if(in_bounds && !position_taken?(board, index))
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

=begin
#Stub w/ non-recursive handling of invalid input:
def turn(board)
  valid_input = false
  until valid_input do
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    valid_input = true if valid_move?(board, index)
  end

  display_board(board)
end
=end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if(!valid_move?(board, index))
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end