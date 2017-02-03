def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || !board[index] == nil
    false
  else
    true
end
end

def valid_move?(board, index)
    if position_taken?(board, index) == true
      false
    elsif index.between?(0,8)
      true
    else
      false
    end
end

def turn(board)
puts "Please enter 1-9:"
user_input = gets.chomp
index = input_to_index(user_input)
if valid_move?(board, index) == true
move(board, index, value = "X")
display_board(board)
else
  turn(board)
end
end
