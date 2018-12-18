def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
# puts "Input position '1'-'9'"
# user_input = gets.chomp
user_input = user_input.to_i-1
# string = user_input.to_i
end



def move(array,index,value='X')
array[index] = value

end
  # code your input_to_index and move method here!



# code your #valid_move? method here

def valid_move?(board,index)
  if position_taken?(board,index) == true
    return false
  elsif index > 8 or index < 0
    return false
  else
 return true
 end
 end


def position_taken?(board, index)
  if board[index] == "X" or board[index] =="O"
    return true
  elsif board[index] == " " or board[index] == "" or board[index] == nil
    return false
  end

end



def turn(board)
puts "Please enter 1-9:"
input = gets.strip
input = input_to_index(input)
if valid_move?(board,input)
 move(board,input,value="X")
   #
  #  return true
 display_board(board)
# # else
# #  turn(board)
else
 turn(board)
end

end
