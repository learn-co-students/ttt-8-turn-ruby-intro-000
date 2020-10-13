def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(number_entered, board)
  number_entered.between?(0, 8) && !(position_taken?(board, number_entered))
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end


def position_taken?(board, index)
  if board[index] == " " or board[index] == ""
    return false
  elsif board[index] == nil
    return false    
  else board[index] == "X" or board[index] == "0"
    return true
  end
end


def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input)
  else
    turn(board)
  end
  display_board(board)
end





