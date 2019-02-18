#display a tic tac toe board passed as an array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#covert user's input to index 
def input_to_index(user_input)
  index = user_input.to_i - 1
end

#check if the position is already taken and an actual number
def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil
      return false
    else
      return true
    end
  end

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if position_taken?(board, index) == false && on_board?(index) == true
    return true
  else
    return false
  end
end

#Take a user num and place an X or O char in that position
def move(board, index, character = "X")
  board[index] = character
  board
end

#Ask user for a valid number between 1 to 9. If it's not, continue to ask for a valid one.
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end