

#method to display the tictactoe board in the terminal
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(string)
  input = string.to_i
  user_input = input - 1
end


#method to represent the user input on the board in the terminal
def move(array,position,player_letter = "X")
  #input logic here
  player_move = position
  array[player_move] = player_letter
end


# method to check if something if the position on the board is available

def position_taken?(array,index)
  if array[index] == " "
    return true
  elsif array[index] == ""
    return true
  else
    return false
  end
end

# method to check if something is a valid move on the board
def valid_move?(array,index)
  if (index >=0 && index<9)
    position_taken?(array,index)
  else
    return nil
  end
end

def turn(array)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_move = input_to_index(user_input)
  
  if valid_move?(array,user_move)
    move(array,user_move)
    display_board(array)
  else 
    turn(array)
  end
end
