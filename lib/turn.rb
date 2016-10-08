def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)
  if valid_move?(board, index) == true
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Please enter another number 1-9"
    number = gets.strip
    index = input_to_index(number)
  end
end






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

def position_taken?(board, index)
  return false if ["", " ", nil].include?(board[index])
  return true if ["X", "O"].include?(board[index])
end


def input_to_index(number)
  number.to_i - 1
end


def move(board, index, value = "X")
  board[index] = value
end
