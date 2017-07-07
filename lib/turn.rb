def display_board (board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if !index.between?(0,8)
    false
  elsif board[index]== " "
    true
  elsif board[index]== "X"
    false
  end
end

def move(board, index, phrase= "X")
  board[index]= phrase
end

def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
  indetx= input_to_index(user_input)
  if valid_move?(board, indetx)
  move(board, indetx)
  display_board (board)
else
  turn(board)
end


end
