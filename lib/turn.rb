def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
    if valid_move?(board, input)
      move(board, input)
      display_board(board)
      break
    else
      puts "I'm sorry, that is not valid space."
    end
  end
end

def display_board(board)
  row     = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input_int = input.to_i
  return input_int - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  if index <= 8 && index >= 0
    valid_space = true
  end
  if position_taken?(board, index) || !valid_space
    false
  else
    true
  end
end

def position_taken?(board, index)
  if (board[index] != "" || board[index] != " " || board[index] != nil) && (board[index] == "X" || board[index] == "O")
    true
  else
    false
  end
end
