def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_input = input_to_index(input)

  if valid_move?(board, converted_input) == true
    move(board, converted_input)
    display_board(board)
  else
    turn(board)

  end



end


def position_taken?(board, index)

  if board[index] == " "
    return false

  elsif board[index] == ""
      return false
  elsif board[index] == nil
      return false
  elsif board[index] == "X"|| board[index] == "O"
      return true
  end
end

def valid_move? (board, index)

  if (0...10) === index && position_taken?(board,index) == false
      return true
  else
    return false
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

(user_input.to_i) - 1

end

def move(board,index, player = "X")
board[index] = player

end
