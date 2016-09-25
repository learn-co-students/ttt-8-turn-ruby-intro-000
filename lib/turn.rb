def turn(board)
  puts "Please enter 1-9:"
  spot = gets.strip
  index = input_to_index(spot)
  if valid_move?(board, index) == false
    turn(board)
  else move(board, index, "X")
  end
  display_board(board)
end


def input_to_index(piece)
  index = piece.to_i
  index = index - 1
  return index
end

def move(array, piece = 1, char = "X")
  array[piece] = char
  return array
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  board_row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  board_row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  board_row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  board_line = "-----------"
  puts board_row1
  puts board_line
  puts board_row2
  puts board_line
  puts board_row3
end


# code your #valid_move? method here
def valid_move?(array, spot)

  if spot.between?(0,8) && !position_taken?(array, spot)
    true
  else
    false
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (array, char)
  if array[char] == " " || array[char] == "" || array[char] == nil
    false
  elsif array[char] == "X" || array[char] == "O"
    true
  else
    true
  end
end
