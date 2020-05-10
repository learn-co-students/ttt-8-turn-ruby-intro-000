def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end


def position_taken?(board,index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end


def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end


def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.to_i
  index = input_to_index(num)
  if valid_move?(board,index)
    move(board,index,character="X")
    puts display_board(board)
  else
    until valid_move?(board,index)
      puts "Please enter 1-9:"
      num = gets.to_i
      index = input_to_index(num)
    end
  end
end
