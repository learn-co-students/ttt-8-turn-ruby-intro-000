def turn(board) #, , current_symbol
  move_is_valid = false

  until (move_is_valid == true)
    puts "Please enter 1-9:"
    inp = gets.strip
    index = input_to_index(inp)
    move_is_valid = valid_move?(board, index)
  end

  # here move_is_valid is true
  move(board, index) #, current_symbol)

  display_board(board)
end

def move(board, index, symbol = "X")
  board[index] = symbol
end

def input_to_index(inp)
  if (inp != '1' && inp != '2' && inp != '3' && inp != '4' && inp != '5' && inp != '6' && inp != '7' && inp != '8' && inp != '9')
    return -1
  else
    i = inp.to_i
    return i - 1
  end
end

def valid_move?(board, index)

  if (position_taken?(board, index))
    puts "Position #{index + 1} is busy. Please choose different one!"
    puts ""
    return false
  end

  if (index >= 0 && index <= 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
