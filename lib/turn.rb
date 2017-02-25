def display_board(board)
  divider = "-----------"
  pipe = "|"
  puts " #{board[0]} #{pipe} #{board[1]} #{pipe} #{board[2]} "
  puts divider
  puts " #{board[3]} #{pipe} #{board[4]} #{pipe} #{board[5]} "
  puts divider
  puts " #{board[6]} #{pipe} #{board[7]} #{pipe} #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8)
    return true
  else
    return false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
