
# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end


# def play(board)
# puts "Where would you like to go?"
# user_input = gets.strip
# end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value = 'X')
  else
    turn(board)
  end
end

def move(board, index, value = 'X')
board[index] = value
display_board(board)
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
      true
    else
      false
    end
end

def position_taken?(board, index)
    if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || "O"
      return true
  end
end
