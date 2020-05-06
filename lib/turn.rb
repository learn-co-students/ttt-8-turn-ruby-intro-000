def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  num = input.to_i
  num -= 1
end

def move(board, index, letter = "X")
  board[index] = letter
end

def valid_move?(board, index)
  if(position_taken?(board, index) || index >= board.length || index < 0)
    return false
  end
  true
end

def position_taken?(board, index)
  if board[index] != " " && board[index] != "" && board[index] != nil
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  num = input_to_index(gets.strip)
  until valid_move?(board, num)
    puts "Please enter 1-9:"
    num = input_to_index(gets.strip)
  end
  move(board, num)
  display_board(board)
end
