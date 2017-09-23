def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  x = user_input.to_i
  index = x - 1
end

def move(board, index, value = "X")
board[index] = value
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif
     index >= 0 && index <= 8
     true

   end
end

def position_taken?(board, index)
 if board[index] == " " || board[index] == "" || board[index] == nil
   false
 else
   true
     end

end
def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
 index = input_to_index(i)
  if !valid_move?(board, index)
    turn(board)
  else
  move(board, index, value = "X")
end
display_board(board)
end
