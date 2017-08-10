def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  number = input_to_index(number)
  until valid_move?(board,number)
    puts "Please enter 1-9:"
    number = gets.strip
    number = input_to_index(number)
  end
    move(board,number)
    display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  position = input.to_i - 1
end

def move(board, position, char='X')
  board[position] = char
end


def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    valid = true
  else
    valid = false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    taken = true
  else
    taken = false
  end
end
