def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(1,9)
    if !position_taken?(board, index)
      true
     end
   end

  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end


def input_to_index(user_input)
  user_input.to_i - 1
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move(array, index, value="X")
  array[index] = value
end

move(board, 0, "X")
board

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_input=input_to_index(input)
  if valid_move?(board, converted_input)
    move(board, converted_input, "X")
    display_board(board)
  else
    turn(board)
  end
end

