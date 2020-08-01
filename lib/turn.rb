def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if [" ", "", nil].include?(board[index]) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"

  chosen = input_to_index(gets.chomp)
  while !valid_move?(board, chosen)
    puts "Please enter 1-9:"
    chosen = input_to_index(gets.chomp)
  end

  move(board,chosen)
  display_board(board)
end
