def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(str_num)
  str_num.to_i - 1
end


def move(array, index, value = "X")
  array[index] = value
end


def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false && index.between?(0, 8)
    return true
  end
end


def position_taken?(array, index)
  if (array[index] == " " || array[index] == "" || array[index] == nil) && index.between?(0, 8)
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.chomp.to_i
  while number < 1 || number > 9
    puts "Please enter 1-9:"
    number = gets.chomp.to_i
  end
  num = input_to_index(number)
  valid_move?(board, num)
  move(board, num, value = "X")
  display_board(board)
end
