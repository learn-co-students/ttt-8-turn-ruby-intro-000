board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if ((index >= 0 and index <= 8) and
    (board[index] == "" or board[index] == " " or board[index] == nil))
    return true
  else return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def input_to_index(user_input)
  if (user_input.to_i == false)
    return -1
  else (index = user_input.to_i - 1)
    return index
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board,index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
