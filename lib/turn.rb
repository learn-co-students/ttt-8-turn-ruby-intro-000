#Define the board once again

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converts a user's place on the board to the index integer for the board

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#Validation --> checks the number to see if 1) the position is already taken and 2) it is an actual number vaid in the board

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

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end
end

#Takes a user's number and the board, and place an X or O in that position

def move(board, index, character = "X")
  board[index] = character
  return board
end

#Asks the user for a number, check if it is valid, and if it's not, continue to ask for a number

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
