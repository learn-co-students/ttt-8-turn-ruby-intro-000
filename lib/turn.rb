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

def valid_move? (board, idx)
  if idx.between?(0, 8) && (board[idx] == " " || board[idx] == "" || board[idx] == nil)
    true
  else
    false
  end
end

def move(board, idx, value = "X")
  board[idx] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  new_idx = input_to_index(input)

  if valid_move?(board, new_idx)
    move(board, new_idx, value = "X")
  else
    turn(board)
  end
  display_board(board)
end
