board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(boards)
  puts " #{boards[0]} | #{boards[1]} | #{boards[2]} "
  puts "-----------"
  puts " #{boards[3]} | #{boards[4]} | #{boards[5]} "
  puts "-----------"
  puts " #{boards[6]} | #{boards[7]} | #{boards[8]} "
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && (board[index] == "" || board[index] == " ")
    true
  else
    false
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board,index)
  display_board(board)
end
