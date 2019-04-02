board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def input_to_index(user_input)
  user_input.to_i - 1
end


def valid_move?(board, index)

   if index.between?(0,8) == true && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, player = "X")
    display_board(board)
  else
    turn(board)
  end
  display_board(board)
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    taken = false
  else
    take = true
  end
end

def move(array, index, player = 'X')
  array[index] = player
end
