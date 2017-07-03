def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
    if position_taken?(board, index)
      return false
    elsif index.between?(0, 8)
      return true
    else
      return false
    end
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    board[index] = "X"
  else
  print "Please enter another number 1-9"
  user_input = gets.chomp
  end
  display_board(board)
end
