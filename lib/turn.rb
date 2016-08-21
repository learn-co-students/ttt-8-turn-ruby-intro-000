def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, player = "X")
    display_board(board)
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
    move(board, index, player = "X")
    display_board(board)
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end


def valid_move?(board, index)
  if index >= 0 && index <= 8 && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == nil
    false
  end
end

def move(board, input_to_index, player = "X")
  board[input_to_index] = player
end
