def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index < 0 || index > 8
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == ' ' || board[index] == '' || board[index] == nil
    return false
  else
    return true
  end
end

def input_to_index(num)
  index = num.to_i
  index -= 1
end

def move(board, index, player="X")
  board[index] = player
  board
end

def turn(board)
  puts "Please enter 1-9:"
  puts "Where would you like to go?"
  input = gets.strip
  index = input_to_index(input)

  until valid_move?(board, index)
    puts "Please enter 1-9:"
    puts "Where would you like to go?"
    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index, "X")
  display_board(board)
end
