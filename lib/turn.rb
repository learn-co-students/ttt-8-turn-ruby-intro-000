def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "   "
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

def move(board, input_to_index, u="X")
  board[input_to_index] = u
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = input_to_index(gets.strip)
  if valid_move?(board,user_input)
      move(board,user_input, u="X")
    else
      turn(board)
    end
  display_board(board)
end
