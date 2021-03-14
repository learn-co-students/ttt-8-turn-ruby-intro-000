def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  real_position = index.to_i
  if !position_taken?(board, index) && real_position.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] ==  "O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, marker = "X")
  board[index] = marker
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, marker = "X")
else
  turn(board)
  end
display_board(board)


end
