def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0,8) && (board[index] == " " || board[index] == "")
    true
  elsif board[index] == "X" || board[index] == "O"
    return false
  end
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  end
end


def input_to_index(number)
  number.to_i - 1
end


def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"

  number = gets.strip

  index = input_to_index(number)

  valid_move = valid_move?(board, index)

  if valid_move
    move(board, index, value = "X")
  else
    turn(board)
  end

  display_board(board)
end
