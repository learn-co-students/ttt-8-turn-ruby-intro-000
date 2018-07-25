# Define display_board that accepts a board and prints
# out the current state.
def row(row)
  " #{row[0]} | #{row[1]} | #{row[2]} "
end

def divider
  "-----------"
end

def display_board(board)
  puts row(board[0, 3])
  puts divider
  puts row(board[3, 6])
  puts divider
  puts row(board[6, 9])
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index == -1
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, char="X")
  board[position] = char
end

def input_valid?(input)
  if input.to_i >= 1 and input.to_i <= 9
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if input_valid?(input)
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
    end
  else
    turn(board)
  end
  display_board(board)
end
