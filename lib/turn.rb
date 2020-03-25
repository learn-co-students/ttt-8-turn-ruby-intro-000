def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index)
  else
    turn(board)
  end
  display_board(board)
end

def input_to_index(input)
  i = input.to_i - 1
  i
end

def move(board,index,player='X')
  board[index] = player
  board
end


def valid_move?(board,index)
  if position_on_board?(index) && !position_taken?(board,index)
    true
  else
    false
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def position_on_board?(index)
  if index.between?(0,8)
    true
  else 
    false
  end
end