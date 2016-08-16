def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  index = user_input.to_i - 1
end
# position_taken? method
def position_taken?(board,index)
  if  (board[index] == " ") || (board[index] == "") ||(board[index] == nil)
    return false
  elsif (board[index] == "X") || (board[index] == "O")
      return true
  end
end
#valid_move method
def valid_move?(board,index)
  if position_taken?(board,index) || index.between?(0, 8) == false
    return false
  else
    return true
  end
end
def move(array,index,player="X")
  array[index]= player
  display_board(array)
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
end
