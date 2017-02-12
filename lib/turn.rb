# code your #valid_move? method here
def valid_move?(board,index)
  if position_taken?(board,index) == true
    false
  elsif index.between?(0,8) && position_taken?(board,index) == false
    true
  elsif
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board [index] == " "
    false
  elsif board [index] == ""
    false
  elsif board [index] == "X"
    true
  elsif board [index] == "O"
    true
  elsif board [index] == nil
    false
  end
end


# display_board method
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  input_to_index = user_input.to_i - 1
end

def move(board,input,character = "X")
  board[input] = character
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  until valid_move?(board, index) == true
    user_input = gets.strip
  end
  move(board, index)
  display_board(board)
end
