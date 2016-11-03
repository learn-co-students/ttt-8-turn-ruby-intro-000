def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"
  print "-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, symbol = "X")
      board[index] = symbol
end

def valid_move?(board, index)
  if index.between?(0, 8)==true
    if position_taken?(board, index)==true
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board, index)
position = board[index]
  if position==" "
    return false
  elsif position==""
    return false
  elsif position==nil
    return false
  elsif position == "X"
    return true
  elsif position=="O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
