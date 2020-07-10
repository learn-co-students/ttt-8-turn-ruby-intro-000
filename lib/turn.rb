#Taking the first step Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converts input to integer
def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

#Accepts board and index from user and returns value
def valid_move?(board, index)
  def position_taken?(array, indx)
    if  array[indx] == " " || array[indx] == "" || array[indx] == nil
      return false
    else
      return true
    end
  end
def on_board?(place)
  if place.between?(0,8) == true
    return true
  else
    return false
  end
end
if position_taken?(board,index) == false && on_board?(index) == true
  return true
else
  return false
end
end

#Accepts board and index from user marking their position
def move(board,index,spot = "X")
  board[index] = spot
  return board
end

#Askn for a number until given a valud one
def turn(board)
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
