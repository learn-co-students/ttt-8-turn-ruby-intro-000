def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  idx = input.to_i  - 1
  return idx
end

def move(boardArr, idx,char='X' )
  boardArr[idx] = char
end

def valid_move?(board, idx)
  empty = position_taken?(board, idx)
  if idx.between?(0, 8) == true && empty == false
    return true
  elsif idx.between?(0,8) == false|| empty == true
    return false
  end
end


def position_taken? (board, idx)
  if board[idx] == '' || board[idx] == ' ' || board[idx] == nil
    return false
  elsif board[idx] =='X' || board[idx] == 'O'
    return true

  end
end


def turn(board)
  puts 'Please enter 1-9:'
  input = gets.strip
  idx = input_to_index(input)
  if valid_move?(board, idx) == true
    move(board, idx)
    display_board(board)
  else puts 'You Dumb Fuck!!'
    turn(board)
  end
end
