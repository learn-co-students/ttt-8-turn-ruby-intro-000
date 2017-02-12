board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(array, index)
  if array[index] == "X"
    true
  elsif array[index] == "O"
    true
  elsif array[index] == " "
    false
  elsif array[index] == ""
    false
  else
    false
  end
end

def valid_move?(array, index)
  if index.between?(0, 8) && !position_taken?(array, index)
    true
  else
    false
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end


