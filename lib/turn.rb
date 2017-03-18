def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index]== "X" || board[index] == "O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def valid_move?(board,index)
  if position_taken?(board,index) == true
    false
  else index.between?(0,8)
  end
end

def input_to_index(user_input)
  input_to_index = user_input.to_i
  index = input_to_index - 1
end

def move (board, index, value="X")
  board[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == false
    turn(board)
  else
  move(board, index, value="X")
  display_board(board)
  end
end
