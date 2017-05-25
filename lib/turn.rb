def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  postition = index.to_i - 1
  if index >=0 && index <=8 && board[index] == " "
    return true
  else board[index] == "X" || board[index] == "0"
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "0"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
