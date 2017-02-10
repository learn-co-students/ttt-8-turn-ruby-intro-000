#DISPLAY_BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(input)
  input = input.to_i
  return (input - 1)
end

#VALID_MOVE?
def valid_move?(board, position)
  if  ( position < 0 || position > board.length || position_taken?(board, position) )
    nil
  else
    move(board, position, char="X")
  end
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    false
  elsif (board[index] == "X" || board[index] == "O")
    true
  end
end

#MOVE
def move(board, position, char="X")
  board[position] = char
end

#Turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index) == nil)
    turn(board)
  end
  display_board(board)
end
