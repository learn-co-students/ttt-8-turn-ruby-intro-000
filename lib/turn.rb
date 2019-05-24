def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == true
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] != "X" && board[index] != "O"
    return true
  else
    return false
  end
end

# code your input_to_index and move method here!

def input_to_index(square_num)
  square_num.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  inputOK = input_to_index(gets.strip)
  if valid_move?(board, inputOK) == true
    move(board, inputOK)
    display_board(board)
  else
    turn(board)
  end

end
