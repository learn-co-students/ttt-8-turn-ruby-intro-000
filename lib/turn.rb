def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == '' || board[index] == ' ' || board[index].nil?
    return true
  else
    return false
  end
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(board, index, value = 'X')
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index, 'X')
    display_board(board)
  else
    puts "Please enter 1-9:"
    index = gets.strip
  end
end
