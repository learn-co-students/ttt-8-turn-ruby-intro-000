def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)

  index = -1

  while index < 0 || index > 8

    puts "Please enter 1-9:"
    user_input = gets.chomp

    index = input_to_index(user_input)

  end

  #at this point, index is a valid number between 0 and 8

  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
    return
  end

  display_board(board)
end

def input_to_index(user_input)

  if user_input.to_i == 0 || !user_input.to_i.between?(1, 9)
    puts "\nInvalid Entry."
    return -1
  else
    user_input = user_input.to_i
    user_input -= 1
    return user_input
  end

end

def move(board, index, x_or_o = "X")
  board[index] = x_or_o
end

def valid_move?(board, index)
  if position_taken?(board, index) == nil
    return false
  elsif position_taken?(board, index)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if index > 8 || index < 0
    return nil
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end
