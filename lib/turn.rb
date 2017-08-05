#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(move)
  puts " #{move[0]} | #{move[1]} | #{move[2]} "
  puts "-----------"
  puts " #{move[3]} | #{move[4]} | #{move[5]} "
  puts "-----------"
  puts " #{move[6]} | #{move[7]} | #{move[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  choice = gets.strip
  choice = input_to_index(choice)

  if valid_move?(board, choice) == false
    puts "Sorry, please try again. Enter 1-9:"
    choice = gets.strip
  else
    board[choice] = "X"
    display_board(board)
  end
 end


def input_to_index(input)
  input.to_i - 1
end


def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end


def move(board, position, char = "X")
  board[position] = char
end


#def turn(board)
  #puts "Please enter 1-9:"
  #choice = gets.strip
  #choice = input_to_index(choice)

  #if valid_move?(board, choice) == false
  #  puts "Sorry, please try again. Enter 1-9:"
  #  choice = gets.strip
#  else
#    board[choice] = "X"
#    display_board(board)
#  end
# end
