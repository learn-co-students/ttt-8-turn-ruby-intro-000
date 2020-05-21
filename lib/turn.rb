def turn(board)
  
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  
  unless valid_move?(board, input)
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
  end
    
  move(board, input)
    
  display_board(board)
    
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if postion_taken?(board, index)
      false
    else
      true
    end
  end
end

def postion_taken?(board, index)
  if board[index] == "O" || board[index] == "X"
    true
  else
    false
  end
end

def input_to_index(index)
  index.to_i - 1
end

def move(board, index, value='X')
  board[index] = value
  board
end
