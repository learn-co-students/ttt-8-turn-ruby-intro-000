#def input_to_index(input)
  #input.to_i - 1
  #end

#if index is valid...
#def valid_move?(index, board)
   #index.between?(0, 8) && !(position_taken?(board, index))
#end

#if index is valid...make themove for index
#def move(array, index, name = "X")
#  array[index] = name
#end

#def position_taken?(board, answer)
#  board[answer] != " "
#end

#def display_board(board)
#  puts " #{board[0]} | #{board[1]} | #{board[2]} "
#  puts "-----------"
#  puts " #{board[3]} | #{board[4]} | #{board[5]} "
#  puts "-----------"
#  puts " #{board[6]} | #{board[7]} | #{board[8]} "
#end

#def turn(board)
#    puts "Please enter 1-9:"
#    answer = gets.chomp
#    answer = input_to_index(answer)
#    if valid_move?(answer, board)
#      move(board, answer)
#      puts display_board(board)
#    else
#      puts "That is an invalid entry!"
#      turn(board)
#    end
#end



#def display_board
  #puts "   |   |   "
  #puts "-----------"
  #puts "   |   |   "
  #puts "-----------"
  #puts "   |   |   "
#end

#def turn(board)
  #puts "Please enter 1-9:"
  #end

  #def input_to_index(user_input)
  #index = user_input.to_i-1
  #end

  #def valid_move?(board, index)
    #if !position_taken?(board, index) && index.between?(0,8)
       #true
     #else
          #false
    #end
  #end
  # ode your #valid_move? method here

  #def move(board, position, char="X")
  #board[position] = char
  #end

  #def position_taken?(board, index)
    #if board[index]=="X" ||
       #board[index]=="O"
        #true
      #elsif board[index]==" " ||
            #board[index]=="" ||
            #board[index]== nil
              #false
    #end
  #end# code your #position_taken? method here!

#def display_board(board)
  #puts " #{board[0]} | #{board[1]} | #{board[2]} "
  #puts "-----------"
  #puts " #{board[3]} | #{board[4]} | #{board[5]} "
  #puts "-----------"
  #puts " #{board[6]} | #{board[7]} | #{board[8]} "
#end

# code your input_to_index and move method here!

#displays a tic tac toe board, with board spaces passed as an array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts a user's place on the board to the index integer
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#checks the number to see if 1) the position is already taken and 2)it is an actual number
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

#Takes a users num and the board, and places the X or O char in that position
def move(board, index, character = "X")
  board[index] = character
  return board
end

#Asks user for a number, check if it is valid, and if it's not, recursively continues to ask for a number
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
