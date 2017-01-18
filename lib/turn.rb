#prints out the array 'board' to look like a tic tac toe board
def display_board (board)

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

#Checks that the move is valid by making sure it is within the range of possible moves
def valid_move? (board, index)
  if (0..8) === index && board[index] === " "
    return true
  else
    return false
  end
end


#Sets the position of the board to "X" or "O"
def move (board, index, token = "X")
  board[index] = token
end

#Converts the user input of board position (from 1-9) to the correct position in the zero-indexed array (0-8)
def input_to_index(user_input)
  if user_input.to_i.class != Fixnum
    return -1
  end
  user_input = user_input.to_i
  user_input -=1
  return user_input
end


#Gets user input, and having verified its validity, makes the turn the user supplies

def turn(board)
  puts "Please enter 1-9:"
  turn_number = gets.chomp
  index = input_to_index(turn_number)
  if valid_move?(board, index)
    move(board,index,token="X")
    display_board(board)
  else
    turn(board)
  end

end
