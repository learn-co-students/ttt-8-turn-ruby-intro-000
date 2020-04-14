def turn(board)
display_board(board)
puts "Please enter 1-9:"
input = gets.strip
integer = input_to_index(input)
   if valid_move?(board, integer) == true
     move(board, integer)
     display_board(board)
   else valid_move?(board, integer) == false
     turn(board)
   end

end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  elsif position_taken?(board, index) == true
    false
  else
    true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)

  converted_input = user_input.to_i - 1
end

def move(board, integer, value = "X")

  board[integer] =  value

end
