def turn(board)
  index = -1
  while (index < 0 || index > 8)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  end
end

# Should accept a board as an argument and
# print out the current state of the board for the use
def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("------------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("------------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

# Should accept a board and an index from the user and return true
# if the index is within the correct range of 0-8 and
# is currently unoccupied by an X or O token.
def valid_move?(board, index)
  if index >= 0 && index <= 8
    return (board[index] == " ")
  else
    return false
  end
end

# should accept a board, an index from the user
# (which was converted from their raw input with `input_to_index`),
# and a token to mark that position with
# (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet).
# should set the correct index value of that position within the board equal to the token.
def move(board, index, token)
  board[index] = token
end
