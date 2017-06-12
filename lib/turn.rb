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


def valid_move?(board, index)
  if (index >= 0 && index <= board.length - 1) && !position_taken?(board, index)
    return true
  else
    return false
  end
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end


def move(board, user_index, token = "X")
  board[user_index] = token
end


def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
