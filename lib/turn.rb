def input_to_index(input)
  input.to_i - 1 
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
  end

def move(board, index, name = "X")
  board[index] = name
end

def position_taken?(board, index)
   board[index] != " "
  end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index)
    puts display_board(board)
  else 
    puts "That is an invalid entry!"
    turn(board)
  end
end
