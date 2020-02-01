def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts "display_board"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board,index) && index.between?(0,8)
    return true
  end
end

def position_taken?(board, index)
  spot = nil
  if board[index] == " " || board[index] == "" || board[index] == nil
    spot = false
  else
    spot = true
  end
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index)
  end
  display_board(board)
end
