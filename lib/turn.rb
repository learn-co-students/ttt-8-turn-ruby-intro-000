def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  num = num.to_i
  return num - 1
end

def valid_move?(board, index)
  if (index >= 0) && (index <= 8) && ((board[index] != "X") && (board[index] != "O"))
    return true
  else
    return false
  end
end

def move(board, index, value = "X")
   board[index] = value
   return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if (valid_move?(board,index) == true)
    x = move(board,index, value ="X")
    display_board(x)
  else
    turn(board)
  end
end
