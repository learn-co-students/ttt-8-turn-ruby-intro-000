def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

def position_taken?(board,index)
  if board[index] == " "
    return false
  elsif board[index] ==""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def move(board,index,value="X")
 board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board,index,value="X")
    display_board(board)
  else
    turn(board)
  end
end
