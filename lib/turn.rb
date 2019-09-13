def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  if(input =~ /|d/)
    input_int = input.to_i - 1
  else
    -1
  end
end

def valid_move?(board, index)
  if (position_taken?(board, index)) == false && (valid_index?(index) == true)
    return true
  else
    return false
  end

end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_index?(index)
  if index.between?(0, 8) == true
    return true
  else
    return false
  end
end

def move(board, index, token = 'X')
  if(valid_move?(board, index) == true)
    board[index] = token;
  else
    puts "This is not a valid move, try again"
    turn(board)
  end
end

def turn (board)
  puts "Please enter 1-9:"

  input = gets

  input_converted = input_to_index(input)

  if (input_converted == -1)
    puts "Invalid input, please enter a valid input (1-9)"
    turn(board)
else
  move(board, input_converted, "X")
  display_board(board)
end

end
