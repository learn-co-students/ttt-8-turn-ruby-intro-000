board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i-1
end

def position_taken?(board, index)
  if " " == board[index] || "" == board[index] || nil == board[index]
    false
  else "X" || "O" == board[index]
    true
  end
end

def valid_move?(board, index)
  if (index.between?(0, 8)) && (!position_taken?(board, index))
    true
  end
end

def move(board, index, player = "X")
  if board[index] = player
end
end

def turn(board)
  loop do
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, player = "X")
    display_board(board)
    break
  end
end
end
