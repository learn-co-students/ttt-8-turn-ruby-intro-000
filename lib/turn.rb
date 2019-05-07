def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def valid_move?(board,index)
  if position_taken?(board,index)
    return false
  end
  if index.between?(0,8) && board
    return true
  else
    return false
  end
end

def position_taken?(board,index)
  if board == ""
      return false
  end
  if board[index] == " " || board[index] == "" || !board[index]
    return false
  end
  if board[index] == "X" || board[index] == "O"
    puts "here"
    return true
  end
end

def move(board,index,value = 'X')
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
   move(board,index)
   display_board(board)
  else
   puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
  end
end
