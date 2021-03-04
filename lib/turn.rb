def display_board(board)
  row = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} " + "\n" + row + "\n" +
       " #{board[3]} | #{board[4]} | #{board[5]} " + "\n" + row + "\n" +
       " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return (user_input.to_i - 1)
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  end
  if position_taken?(board, index)
    return false
  end
  return true
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == " X " || board[index] == " O "
    return false
  end
  return true
end

def move(board, index, player="X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
  else
    puts "Please enter a valid input..."
    turn(board)
  end
end
