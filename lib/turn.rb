#display the board
#valid move?
#show actual move

def display_board(the_board)
  puts " #{the_board[0]} | #{the_board[1]} | #{the_board[2]} "
  puts "-----------"
  puts " #{the_board[3]} | #{the_board[4]} | #{the_board[5]} "
  puts "-----------"
  puts " #{the_board[6]} | #{the_board[7]} | #{the_board[8]} "
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


#this converts the user input to an integer
def input_to_index(user_input) #this method takes one argument (the users input)
  new_user_input = user_input.to_i #this specific .to converts the string into an intergeer
  new_user_input -= 1 #this subtracts it by 1 since arrays start with 0
end

def move(board, index, character = "X") #this method takes on 3 arguments
  board[index] = character #this will take the board array and place the character X onto the index
end

#is this a valid move?
def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil #if the array is empty, we turn false
      return false
    else
      return true
    end
  end
#is the user putting an appropriate number to play ex: 1-9
  def available_on_board?(num)
  if num.between?(0, 8) == true #if the number is between
    return true
  else
    return false
  end
end

  if (position_taken?(board, index)) == false && (available_on_board?(index) == true)
    return true
  else
    return false
  end
end

#TURN time
def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
