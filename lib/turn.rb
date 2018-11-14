def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil then false
  else true
  end
end

def valid_move?(board,index)
  if index.between?(0,8) == true && position_taken?(board,index) == false then true
  else false
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board,index,token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index)
  else
    turn(board)
  end
  display_board(board)
end
