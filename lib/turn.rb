
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board,index) && index < 9 && index >= 0
    return true
  end
    return false

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, char = "X")
  board[position] = char
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if  valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
