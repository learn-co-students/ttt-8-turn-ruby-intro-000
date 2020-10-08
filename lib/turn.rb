def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  else
    false
  end
end

def valid_move?(board, index)
  if index.between?(0, 9)
    if position_taken?(board, index) == true
      false
    else
      true
    end
  else
    false
  end
end

def move(board, index, token="X")
  board[index] = token
end
