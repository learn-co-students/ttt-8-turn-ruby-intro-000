
#METHODS
#--------------------------------------------------------------------------------

def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

#--------------------------------------------------------------------------------

def input_to_index(index)
  index = index.to_i
  index -= 1
  return index
end

#--------------------------------------------------------------------------------

def valid_move?(board, index)
  if index.between?(0, 9) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

#--------------------------------------------------------------------------------

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

#--------------------------------------------------------------------------------

def move(board, index, token = "X")
    board[index] = token
end

#--------------------------------------------------------------------------------

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip.to_i
  index = input_to_index(index)
  if valid_move?(board, index) == true
    move(board, index, token = "X")
    puts display_board(board)
  else
    puts "Sorry, that is not an eligible move."
    index = gets.strip.to_i
  end
end
