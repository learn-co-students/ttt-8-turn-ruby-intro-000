def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input) #(user_input)
  input.to_i - 1          #user_input.to_i - 1
end

#def valid_move?(board, position)
#  if position.to_i.between?(1,9)
#  if !position_taken?(board, position.to_i-1)
#  TRUE
#  end
#   end
# position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)

def valid_move?(board, index)
  index != (-1) && index != (-2) && index != (-3) && index != (-4) && index != (-5) && index != (-6) && index != (-7) && index != (-8) && index != (-9) && board[index] == " " || board[index] == "" || board[index] == nil && index == (0..8)?
  true : false
  #if board[index] == " " || board[index] == "" || board[index] == nil && index == (0..8)
  #true
  #else
  #false
  #end
end

def turn(board)
 puts "Please enter 1-9:"
 input = gets.strip
 index = input_to_index(input)
 if valid_move?(board, index)
 move(board, index)
 else
   print "invalid entry    "
 turn(board)
 end
 puts ""
 #display_board(board)
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

#def position_taken?(board, location)
# board[location] != " "
#end
