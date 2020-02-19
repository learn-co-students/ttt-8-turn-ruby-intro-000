def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index input
  input.to_i - 1
end

def move board, index, char = 'X'
  board[index] = char
end

def valid_move? board, index
  if index < 9 && index > -1
    !position_taken? board, index
  end
end

def position_taken? board,index
  if board[index] == 'X' || board[index] == 'O'
    true
  else
    false
  end
end

def turn board
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move? board, index
    move board, index
    display_board board
  else
    turn board
  end
end
