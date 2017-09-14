board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)


  row1 = " #{board[0]} | #{board[1]} | #{board[2]} \n"
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} \n"
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} \n"


  new_board = row1 + "-----------\n" + row2 + "-----------\n" + row3

  puts new_board

end

def valid_move?(board, index)

  if position_taken?(board, index)
    return false
  elsif (0..8).include?(index)
    return true
  end
  false

end


def position_taken?(board, index)
  return false if board[index] == nil
  !(board[index] == "" || board[index] == " ")
end

def input_to_index(user_input)
  user_input.to_i - 1

end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index, value = "X")
  else
    turn(board)
  end

  display_board(board)

end
