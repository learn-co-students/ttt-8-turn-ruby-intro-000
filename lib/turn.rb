# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  cell1 = " #{board[0]} "
  cell2 = " #{board[1]} "
  cell3 = " #{board[2]} "
  cell4 = " #{board[3]} "
  cell5 = " #{board[4]} "
  cell6 = " #{board[5]} "
  cell7 = " #{board[6]} "
  cell8 = " #{board[7]} "
  cell9 = " #{board[8]} "
  box = "|"
  line = "-----------"
  print cell1, box, cell2, box, cell3
  print "\n",line
  print "\n",cell4, box, cell5, box, cell6
  print "\n",line
  print "\n",cell7, box, cell8, box, cell9, "\n"
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  elsif position_taken?(board, index) == true
    return false
  end
end

def position_taken? (board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
end
end

def move(board, index, char = "X")

  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, char = "X") 
    display_board(board)
  else turn(board)
end
end