def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " 
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " 
end

def input_to_index (move)
   return move.to_i - 1
end

def valid_move? (board, index)
  if (index > -1 && index < 9) && position_taken?(board, index) == false 
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false
  else
   return true
  end
end

def move (board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index)
    display_board (board)
  end
end
