def display_board(board)
  line = "-----------\n"
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print line
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"
  print line
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return nil
  elsif position_taken?(board, index) == true
    return nil
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  n = 0
  while n == 0 do
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index) == true && position_taken?(board, index) == false
      move(board, index)
      n += 1
    else
      puts "That is not a valid move. Please select somewhere else."
    end
  end
  display_board(board)
end
