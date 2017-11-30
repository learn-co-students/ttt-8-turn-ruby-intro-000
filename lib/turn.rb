def display_board(board)
  # board = [ " ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index >= 0 && index < 9
    if board[index] == "X" || board[index] == "O"
      return false
    else
      return true
    end
  else
    return false
  end
end


def input_to_index(input)
  index = input.to_i - 1
  return index
end


def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
