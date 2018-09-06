def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board,index)
  valid = true
  if index < 0 || index > 8
    valid = false
  else
    if board[index] == "X" || board[index] == "O"
      valid = false
    end
  end
  valid
end


def move(board,index,token = "X")
  board[index] = token
end


def input_to_index(input)
  index = input.to_i - 1
end


def turn(board)
  # display_board(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  index = input_to_index(user_input)
  until valid_move?(board,index)
    puts "Please enter 1-9:"
    user_input = gets.to_i
    index = input_to_index(user_input)
  end
  move(board,index)
  display_board(board)
end
