def display_board(board)
  dashes = '-----------'
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dashes
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dashes
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, char = 'X')
    display_board(board)  
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0, 8)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] != " " && board[index] != "" && board[index] != nil
    true
  else
    false
  end
end

def move(board, index, char = 'X')
  board[index] = "#{char}"
end
