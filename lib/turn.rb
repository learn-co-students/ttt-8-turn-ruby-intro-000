def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  (input.to_i) - 1
end

def valid_move?(board, index)
  if index < 0
    return false
  elsif index > 8
    return false
  elsif board[index] == " "
    return true
  elsif board[index] == "X"
    return false
  elsif board[index] == "O"
    return false
  else
    return nil
  end
end

def move(board, index, x_or_o = "X")
  board[index] = x_or_o
end

def turn(board)
  status = false
  until status == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    status = valid_move?(board,index)
  end
  move(board, index, x_or_o = "X")
  display_board(board)
end
