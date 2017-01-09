def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
    if valid_move?(board,index)
      move(board, index, char = "X")
      display_board(board)
    else
      turn(board)
    end
end

#helper methods
def display_board(board)
  separator = "-----------\n"

  print " #{board[0]} "+"|" +" #{board[1]} ", +"|"+ " #{board[2]} " + "\n"
  print separator
  print " #{board[3]} "+"|" +" #{board[4]} ", +"|"+ " #{board[5]} " + "\n"
  print separator
  print " #{board[6]} "+"|" +" #{board[7]} ", +"|"+ " #{board[8]} " + "\n"
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  index
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index)
  return true if board[index] == "X" || board[index] == "O"
  return false
end

def valid_move?(board,index)
  if position_taken?(board,index) == true
    false
  else
    if index.between?(0,9) && board[index] == " "
      true
    end
  end
end
